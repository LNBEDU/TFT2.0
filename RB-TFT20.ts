/**
 * ST7789VW 240x320 SPI driver for micro:bit (MakeCode)
 * Pins (default):
 *   SCK  = P13 (hardware SPI)
 *   MOSI = P15 (hardware SPI)
 *   DC   = P8
 *   RST  = P16
 *   CS   = tied to GND (always enabled)
 */

namespace RBTFT20 {
    // ---------- Config ----------
    const TFT_W = 240
    const TFT_H = 320

    let PIN_DC: DigitalPin = DigitalPin.P8
    let PIN_RST: DigitalPin = DigitalPin.P16
    let _inited = false

    // ---------- ST7789 Commands ----------
    const SWRESET = 0x01
    const SLPOUT  = 0x11
    const NORON   = 0x13
    const INVOFF  = 0x20
    const INVON   = 0x21
    const DISPON  = 0x29
    const CASET   = 0x2A
    const RASET   = 0x2B
    const RAMWR   = 0x2C
    const MADCTL  = 0x36
    const COLMOD  = 0x3A

    // ---------- Public Color enum (renamed to avoid conflicts) ----------
    export enum TFTColor {
        Black   = 0x0000,
        White   = 0xFFFF,
        Red     = 0xF800,
        Green   = 0x07E0,
        Blue    = 0x001F,
        Yellow  = 0xFFE0,
        Cyan    = 0x07FF,
        Magenta = 0xF81F,
        Orange  = 0xFD20,
        Gray    = 0x8410,
        DarkGreen = 0x03E0
    }

    // Optional: allow changing DC/RST pins if needed
    //% block="TFT set pins DC %dc RST %rst"
    export function setPins(dc: DigitalPin, rst: DigitalPin): void {
        PIN_DC = dc
        PIN_RST = rst
        _inited = false
    }

    function spiInit(): void {
        // SPI pins: SCK=P13, MISO=P14(unused), MOSI=P15
        pins.spiPins(DigitalPin.P13, DigitalPin.P14, DigitalPin.P15)
        pins.spiFrequency(8000000) // if unstable, try 4000000
        pins.spiFormat(8, 0)        // 8-bit, mode 0
    }

    function cmd(c: number): void {
        pins.digitalWritePin(PIN_DC, 0)
        pins.spiWrite(c)
    }

    function data8(d: number): void {
        pins.digitalWritePin(PIN_DC, 1)
        pins.spiWrite(d)
    }

    function data16(d: number): void {
        pins.digitalWritePin(PIN_DC, 1)
        pins.spiWrite((d >> 8) & 0xFF)
        pins.spiWrite(d & 0xFF)
    }

    function resetPulse(): void {
        pins.digitalWritePin(PIN_RST, 1)
        control.waitMicros(5000)

        pins.digitalWritePin(PIN_RST, 0)
        control.waitMicros(20000)

        pins.digitalWritePin(PIN_RST, 1)
        control.waitMicros(120000)
    }

    function setAddrWindow(x0: number, y0: number, x1: number, y1: number): void {
        cmd(CASET)
        data16(x0)
        data16(x1)

        cmd(RASET)
        data16(y0)
        data16(y1)

        cmd(RAMWR)
    }

    /**
     * Initialize display (ST7789VW 240x320)
     */
    //% block="Initialize TFT Display"
    export function init(): void {
        if (_inited) return
        _inited = true

        pins.digitalWritePin(PIN_DC, 1)
        pins.digitalWritePin(PIN_RST, 1)

        spiInit()
        resetPulse()

        cmd(SWRESET)
        control.waitMicros(150000)

        cmd(SLPOUT)
        control.waitMicros(120000)

        // 16-bit color
        cmd(COLMOD)
        data8(0x55)
        control.waitMicros(10000)

        // Memory access control (rotation)
        // 0x00: portrait
        // try 0x60 / 0xC0 / 0xA0 if rotated/mirrored
        cmd(MADCTL)
        data8(0x00)

        // Most ST7789 IPS modules need inversion ON
        cmd(INVON)
        control.waitMicros(10000)

        cmd(NORON)
        control.waitMicros(10000)

        cmd(DISPON)
        control.waitMicros(120000)

        fillScreen(TFTColor.Black)
    }

    /**
     * Fill entire screen with a color
     */
    //% block="Fill TFT screen with color %color"
    export function fillScreen(color: TFTColor): void {
        init()
        setAddrWindow(0, 0, TFT_W - 1, TFT_H - 1)

        pins.digitalWritePin(PIN_DC, 1)
        const hi = ((color as number) >> 8) & 0xFF
        const lo = (color as number) & 0xFF
        const total = TFT_W * TFT_H

        for (let i = 0; i < total; i++) {
            pins.spiWrite(hi)
            pins.spiWrite(lo)
        }
    }

    /**
     * Draw a single pixel
     */
    //% block="Draw single pixel at x %x y %y with color %color"
    export function drawPixel(x: number, y: number, color: TFTColor): void {
        if (x < 0 || y < 0 || x >= TFT_W || y >= TFT_H) return
        init()
        setAddrWindow(x, y, x, y)
        data16(color as number)
    }
}
