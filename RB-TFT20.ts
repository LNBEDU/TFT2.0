/**
 * RB-TFT2.0 (ST7789VW) micro:bit driver (SPI, MODE3)
 * - Optimized full-screen clear / fill using spiWriteBuffer streaming
 * - Default resolution: 240x320
 * - Default wiring (as discussed):
 *    SCK  -> P13
 *    MOSI -> P15
 *    DC   -> P14
 *    CS   -> GND (so _useCS=false)
 *    RST  -> (not connected / tied to 3V on module)  -> we don't require it
 *    VCC  -> 3V
 *    GND  -> GND
 */

namespace RBTFT20 {
    // -------------------------
    // Pins (can be overridden)
    // -------------------------
    let _sck: DigitalPin = DigitalPin.P13
    let _mosi: DigitalPin = DigitalPin.P15
    let _dc: DigitalPin = DigitalPin.P14
    // If your module RST pin is tied to 3V, do NOT connect it to a micro:bit pin.
    // Leave this as an unconnected pin.
    let _rst: DigitalPin = DigitalPin.P16
    let _cs: DigitalPin = DigitalPin.P8
    let _useCS = false

    // ST7789 RAM window offset (some boards need it). For a 240x320 ST7789VW, usually 0,0.
    let _xOffset = 0
    let _yOffset = 0

    // Panel size
    const TFTWIDTH = 240
    const TFTHEIGHT = 320

    // SPI settings (micro:bit + long wires -> keep it conservative)
    const SPI_FREQ_HZ = 8000000 // 1 MHz

    // -------------------------
    // ST7789 commands
    // -------------------------
    enum TFTCommands {
        NOP = 0x00,
        SWRESET = 0x01,
        SLPOUT = 0x11,
        NORON = 0x13,
        INVOFF = 0x20,
        INVON = 0x21,
        DISPOFF = 0x28,
        DISPON = 0x29,
        CASET = 0x2A,
        RASET = 0x2B,
        RAMWR = 0x2C,
        MADCTL = 0x36,
        COLMOD = 0x3A,
        FRMCTR1 = 0xB1,
        FRMCTR2 = 0xB2,
        FRMCTR3 = 0xB3,
        INVCTR = 0xB4,
        PWCTR1 = 0xC0,
        PWCTR2 = 0xC1,
        PWCTR3 = 0xC2,
        PWCTR4 = 0xC3,
        PWCTR5 = 0xC4,
        VMCTR1 = 0xC5,
        FRCTRL2 = 0xC6,
        PWCTRL1 = 0xD0,
        GMCTRP1 = 0xE0,
        GMCTRN1 = 0xE1,
        DELAY = 0xFFFF
    }

    // -------------------------
    // Public configuration
    // -------------------------

    /**
     * Set pins (advanced users)
     */
    //% blockId=rb_tft20_set_pins block="Set TFT pins SCK %sck MOSI %mosi DC %dc RST %rst CS %cs useCS %useCS"
    //% group="Config" advanced=true
    export function setPins(sck: DigitalPin, mosi: DigitalPin, dc: DigitalPin, rst: DigitalPin, cs: DigitalPin, useCS: boolean): void {
        _sck = sck
        _mosi = mosi
        _dc = dc
        _rst = rst
        _cs = cs
        _useCS = useCS
    }

    /**
     * Set ST7789 RAM offsets (some boards need it).
     */
    //% blockId=rb_tft20_set_offset block="Set TFT offset X %xOffset Y %yOffset"
    //% group="Config" advanced=true
    export function setOffset(xOffset: number, yOffset: number): void {
        _xOffset = xOffset | 0
        _yOffset = yOffset | 0
    }

    // -------------------------
    // Low-level helpers
    // -------------------------

    function csLow(): void {
        if (_useCS) pins.digitalWritePin(_cs, 0)
    }

    function csHigh(): void {
        if (_useCS) pins.digitalWritePin(_cs, 1)
    }

    function writeCommand(cmd: number): void {
        pins.digitalWritePin(_dc, 0)
        pins.spiWrite(cmd & 0xFF)
    }

    function writeDataByte(b: number): void {
        pins.digitalWritePin(_dc, 1)
        pins.spiWrite(b & 0xFF)
    }

    function writeDataBuffer(buf: Buffer): void {
        pins.digitalWritePin(_dc, 1)
        pins.spiWriteBuffer(buf)
    }

    function send(cmd: number, params?: number[]): void {
        csLow()
        writeCommand(cmd)
        if (params && params.length) {
            pins.digitalWritePin(_dc, 1)
            for (let v of params) pins.spiWrite(v & 0xFF)
        }
        csHigh()
    }

    function hwReset(): void {
        // Only makes sense if your TFT RST is actually wired to micro:bit.
        // If not wired, it just toggles an unused pin (harmless).
        pins.digitalWritePin(_rst, 1)
        basic.pause(10)
        pins.digitalWritePin(_rst, 0)
        basic.pause(50)
        pins.digitalWritePin(_rst, 1)
        basic.pause(120)
    }

    function setWindow(x0: number, y0: number, x1: number, y1: number): void {
        // clip
        if (x0 < 0) x0 = 0
        if (y0 < 0) y0 = 0
        if (x1 >= TFTWIDTH) x1 = TFTWIDTH - 1
        if (y1 >= TFTHEIGHT) y1 = TFTHEIGHT - 1

        x0 = (x0 + _xOffset) | 0
        x1 = (x1 + _xOffset) | 0
        y0 = (y0 + _yOffset) | 0
        y1 = (y1 + _yOffset) | 0

        // 16-bit coordinates
        send(TFTCommands.CASET, [(x0 >> 8) & 0xFF, x0 & 0xFF, (x1 >> 8) & 0xFF, x1 & 0xFF])
        send(TFTCommands.RASET, [(y0 >> 8) & 0xFF, y0 & 0xFF, (y1 >> 8) & 0xFF, y1 & 0xFF])
    }

    // Start a RAM write and keep CS low for streaming pixel data
    function beginPixels(x0: number, y0: number, x1: number, y1: number): void {
        setWindow(x0, y0, x1, y1)
        csLow()
        writeCommand(TFTCommands.RAMWR) // 0x2C
        pins.digitalWritePin(_dc, 1)   // data mode for following bytes
    }

    function endPixels(): void {
        csHigh()
    }

    // Stream a single RGB565 color for count pixels (fast)
    function streamColor565(color: number, count: number): void {
        const hi = (color >> 8) & 0xFF
        const lo = color & 0xFF

        // 64 pixels per chunk => 128 bytes
        const CHUNK_PIXELS = 64
        const chunk = pins.createBuffer(CHUNK_PIXELS * 2)
        for (let i = 0; i < CHUNK_PIXELS; i++) {
            const j = i * 2
            chunk[j] = hi
            chunk[j + 1] = lo
        }

        while (count > 0) {
            if (count >= CHUNK_PIXELS) {
                pins.spiWriteBuffer(chunk)
                count -= CHUNK_PIXELS
            } else {
                const tail = pins.createBuffer(count * 2)
                for (let i = 0; i < count; i++) {
                    const j = i * 2
                    tail[j] = hi
                    tail[j + 1] = lo
                }
                pins.spiWriteBuffer(tail)
                count = 0
            }
        }
    }

    // -------------------------
    // Public API (Blocks)
    // -------------------------

    /**
     * Initialize TFT display (ST7789, SPI MODE 3)
     */
    //% blockId=rb_tft20_init block="Initialize TFT Display"
    //% group="Basic"
    export function init(): void {
        // Configure pins
        pins.digitalWritePin(_dc, 0)
        pins.digitalWritePin(_rst, 1)
        if (_useCS) {
            pins.digitalWritePin(_cs, 1)
        }

        pins.spiPins(_mosi, DigitalPin.P2 /* MISO not used */, _sck)
        pins.spiFormat(8, 3)                 // MODE 3 (CPOL=1, CPHA=1)
        pins.spiFrequency(SPI_FREQ_HZ)

        // Reset + init sequence
        hwReset()

        send(TFTCommands.SWRESET); basic.pause(150)
        send(TFTCommands.SLPOUT);  basic.pause(120)

        // Pixel format: 16-bit (RGB565)
        send(TFTCommands.COLMOD, [0x55]); basic.pause(10)

        // Memory Access Control (rotation / RGB order)
        // 0x00 usually works (Row/Column normal, RGB). If colors swapped, try 0x08.
        send(TFTCommands.MADCTL, [0x00])

        // Inversion often needed for "normally black" ST7789 panels
        send(TFTCommands.INVON); basic.pause(10)

        send(TFTCommands.NORON);  basic.pause(10)
        send(TFTCommands.DISPON); basic.pause(120)
    }

    /**
     * Draw filled rectangle (fast path used by clearScreen)
     */
    //% blockId=rb_tft20_draw_rect block="Draw rectangle at x %x y %y with width %w height %h color %color"
    //% group="Draw"
    export function drawRectangle(x: number, y: number, w: number, h: number, color: number): void {
        if (w <= 0 || h <= 0) return
        // clip
        if (x < 0) { w += x; x = 0 }
        if (y < 0) { h += y; y = 0 }
        if (x >= TFTWIDTH || y >= TFTHEIGHT) return
        if (x + w > TFTWIDTH) w = TFTWIDTH - x
        if (y + h > TFTHEIGHT) h = TFTHEIGHT - y
        if (w <= 0 || h <= 0) return

        beginPixels(x, y, x + w - 1, y + h - 1)
        streamColor565(color, w * h)
        endPixels()
    }

    /**
     * Clear whole screen (fast)
     */
    //% blockId=rb_tft20_clear block="Clear screen"
    //% group="Basic"
    export function clearScreen(): void {
        drawRectangle(0, 0, TFTWIDTH, TFTHEIGHT, 0x0000) // black
    }

    /**
     * Draw a single pixel
     */
    //% blockId=rb_tft20_draw_pixel block="Draw single pixel at x %x y %y with color %color"
    //% group="Draw"
    export function drawPixel(x: number, y: number, color: number): void {
        if (x < 0 || y < 0 || x >= TFTWIDTH || y >= TFTHEIGHT) return
        beginPixels(x, y, x, y)
        streamColor565(color, 1)
        endPixels()
    }

    /**
     * Draw circle (outline)
     */
    //% blockId=rb_tft20_draw_circle block="Draw circle at x %x y %y with radius %r and color %color"
    //% group="Draw"
    export function drawCircle(x0: number, y0: number, r: number, color: number): void {
        if (r <= 0) return
        let x = r
        let y = 0
        let err = 0

        while (x >= y) {
            drawPixel(x0 + x, y0 + y, color)
            drawPixel(x0 + y, y0 + x, color)
            drawPixel(x0 - y, y0 + x, color)
            drawPixel(x0 - x, y0 + y, color)
            drawPixel(x0 - x, y0 - y, color)
            drawPixel(x0 - y, y0 - x, color)
            drawPixel(x0 + y, y0 - x, color)
            drawPixel(x0 + x, y0 - y, color)

            y++
            if (err <= 0) {
                err += 2 * y + 1
            }
            if (err > 0) {
                x--
                err -= 2 * x + 1
            }
        }
    }
}
