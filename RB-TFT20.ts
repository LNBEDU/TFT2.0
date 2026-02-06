/**
 * Color definitions (RGB565)
 */
enum Color {
    //% block="Black"
    Black = 0x0000,
    //% block="Navy"
    Navy = 0x000F,
    //% block="DarkGreen"
    DarkGreen = 0x03E0,
    //% block="DarkCyan"
    DarkCyan = 0x03EF,
    //% block="Maroon"
    Maroon = 0x7800,
    //% block="Purple"
    Purple = 0x780F,
    //% block="Olive"
    Olive = 0x7BE0,
    //% block="LightGrey"
    LightGrey = 0xC618,
    //% block="DarkGrey"
    DarkGrey = 0x7BEF,
    //% block="Blue"
    Blue = 0x001F,
    //% block="Green"
    Green = 0x07E0,
    //% block="Cyan"
    Cyan = 0x07FF,
    //% block="Red"
    Red = 0xF800,
    //% block="Magenta"
    Magenta = 0xF81F,
    //% block="Yellow"
    Yellow = 0xFFE0,
    //% block="White"
    White = 0xFFFF
}

//% color=#1E90FF icon="\uf108" block="RB-TFT20-V2"
namespace RBTFT20 {
    // Panel size (your module uses a 240x240 panel centered in ST7789 GRAM)
    // We expose it as 240x240 and use default Y offset = 80.
    const TFTWIDTH = 240
    const TFTHEIGHT = 240

    // Wiring defaults (as you confirmed)
    let _sck: DigitalPin = DigitalPin.P13
    let _mosi: DigitalPin = DigitalPin.P15
    let _dc: DigitalPin = DigitalPin.P14
    let _rst: DigitalPin = DigitalPin.P16
    let _cs: DigitalPin = DigitalPin.P12
    let _useCS = false

    // Offset (some modules need this; keep configurable)
    let _xOffset = 0
    let _yOffset = 80

    let _inited = false

    enum TFTCommands {
        SWRESET = 0x01,
        SLPOUT = 0x11,
        INVOFF = 0x20,
        INVON = 0x21,
        DISPON = 0x29,
        CASET = 0x2A,
        RASET = 0x2B,
        RAMWR = 0x2C,
        MADCTL = 0x36,
        COLMOD = 0x3A
    }

    function hi(v: number): number { return (v >> 8) & 0xFF }
    function lo(v: number): number { return v & 0xFF }

    function csLow(): void {
        if (_useCS) pins.digitalWritePin(_cs, 0)
    }
    function csHigh(): void {
        if (_useCS) pins.digitalWritePin(_cs, 1)
    }

    // Send single command byte
    function writeCommand(cmd: number): void {
        csLow()
        pins.digitalWritePin(_dc, 0)
        pins.spiWrite(cmd)
        csHigh()
    }

    // Send command + parameter bytes (short transfers)
    function send(cmd: number, params: number[]): void {
        csLow()
        pins.digitalWritePin(_dc, 0)
        pins.spiWrite(cmd)
        if (params && params.length) {
            pins.digitalWritePin(_dc, 1)
            for (let b of params) pins.spiWrite(b)
        }
        csHigh()
    }

    // For pixel streaming: keep CS low and DC high while sending lots of bytes
    function beginPixels(): void {
        csLow()
        pins.digitalWritePin(_dc, 0)
        pins.spiWrite(TFTCommands.RAMWR)
        pins.digitalWritePin(_dc, 1)
    }
    function endPixels(): void {
        csHigh()
        pins.digitalWritePin(_dc, 0)
    }

    function setWindow(x0: number, y0: number, x1: number, y1: number): void {
        const xs = x0 + _xOffset
        const xe = x1 + _xOffset
        const ys = y0 + _yOffset
        const ye = y1 + _yOffset
        send(TFTCommands.CASET, [hi(xs), lo(xs), hi(xe), lo(xe)])
        send(TFTCommands.RASET, [hi(ys), lo(ys), hi(ye), lo(ye)])
    }

    function hwReset(): void {
        pins.digitalWritePin(_rst, 0)
        basic.pause(50)
        pins.digitalWritePin(_rst, 1)
        basic.pause(120)
    }

    /**
     * (Optional) change wiring
     */
    export function setPins(sck: DigitalPin, mosi: DigitalPin, dc: DigitalPin, rst: DigitalPin, cs: DigitalPin, useCS: boolean): void {
        _sck = sck
        _mosi = mosi
        _dc = dc
        _rst = rst
        _cs = cs
        _useCS = useCS
        _inited = false
    }

    /**
     * Some modules need display memory offsets. Your panel needs Y offset = 80 by default.
     */
    //% block="Set display offset x:%x y:%y"
    //% weight=95
    export function setOffset(x: number, y: number): void {
        _xOffset = x
        _yOffset = y
    }

    /**
     * Initialize TFT Display (ST7789, SPI MODE3)
     */
    //% block="Initialize TFT Display"
    //% weight=100
    export function init(): void {
        if (_inited) return

        // IMPORTANT:
        // DC is on P14 (shared with MISO), so NEVER assign MISO to P14.
        // We don't read from TFT, so use a dummy pin for MISO (P2).
        pins.spiPins(_mosi, DigitalPin.P2, _sck)
        pins.spiFormat(8, 3)          // MODE3 (works for your panel)
        pins.spiFrequency(8000000)    // 8MHz stable on micro:bit

        pins.digitalWritePin(_dc, 1)
        if (_useCS) pins.digitalWritePin(_cs, 1)

        hwReset()

        // Basic init
        send(TFTCommands.SWRESET, [])
        basic.pause(150)
        send(TFTCommands.SLPOUT, [])
        basic.pause(120)

        // 16-bit color
        send(TFTCommands.COLMOD, [0x55])
        basic.pause(10)

        // rotation / RGB order (adjust later if needed)
        send(TFTCommands.MADCTL, [0x00])

        // Many ST7789 panels need inversion on for correct colors
        send(TFTCommands.INVON, [])
        basic.pause(10)

        send(TFTCommands.DISPON, [])
        basic.pause(120)

        _inited = true
    }

    /**
     * Fill a rectangle (FAST, streaming)
     */
    //% block="Draw rectangle at x:%x y:%y with width:%w height:%h color:%color"
    //% x.min=0 x.max=239
    //% y.min=0 y.max=239
    //% w.min=1 w.max=240
    //% h.min=1 h.max=240
    //% weight=80
    export function drawRectangle(x: number, y: number, w: number, h: number, color: Color): void {
        init()
        if (w <= 0 || h <= 0) return

        let x1 = x + w - 1
        let y1 = y + h - 1
        if (x < 0) x = 0
        if (y < 0) y = 0
        if (x1 >= TFTWIDTH) x1 = TFTWIDTH - 1
        if (y1 >= TFTHEIGHT) y1 = TFTHEIGHT - 1
        if (x > x1 || y > y1) return

        setWindow(x, y, x1, y1)

        const hiC = hi(color)
        const loC = lo(color)
        const count = (x1 - x + 1) * (y1 - y + 1)

        beginPixels()
        for (let i = 0; i < count; i++) {
            pins.spiWrite(hiC)
            pins.spiWrite(loC)
        }
        endPixels()
    }

    /**
     * Clear screen (fill black)
     */
    //% block="Clear screen"
    //% weight=70
    export function clearScreen(): void {
        drawRectangle(0, 0, TFTWIDTH, TFTHEIGHT, Color.Black)
    }

    /**
     * Draw a single pixel
     */
    //% block="Draw single pixel at x:%x y:%y with color:%color"
    //% x.min=0 x.max=239
    //% y.min=0 y.max=239
    //% weight=75
    export function drawPixel(x: number, y: number, color: Color): void {
        init()
        if (x < 0 || x >= TFTWIDTH || y < 0 || y >= TFTHEIGHT) return
        setWindow(x, y, x, y)
        const hiC = hi(color)
        const loC = lo(color)
        beginPixels()
        pins.spiWrite(hiC)
        pins.spiWrite(loC)
        endPixels()
    }

    /**
     * Draw circle outline (simple, pixel-based)
     */
    //% block="Draw circle at x:%x y:%y with radius:%r and color:%color"
    //% x.min=0 x.max=239
    //% y.min=0 y.max=239
    //% r.min=1 r.max=160
    //% weight=78
    export function drawCircle(x0: number, y0: number, r: number, color: Color): void {
        init()
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
            err += 1 + 2 * y
            if (2 * (err - x) + 1 > 0) {
                x--
                err += 1 - 2 * x
            }
        }
    }
}
