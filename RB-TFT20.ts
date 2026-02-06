/**
 * Color definitions (RGB565)
 */
enum Color {
    Black = 0x0000,
    Navy = 0x000F,
    DarkGreen = 0x03E0,
    DarkCyan = 0x03EF,
    Maroon = 0x7800,
    Purple = 0x780F,
    Olive = 0x7BE0,
    LightGrey = 0xC618,
    DarkGrey = 0x7BEF,
    Blue = 0x001F,
    Green = 0x07E0,
    Cyan = 0x07FF,
    Red = 0xF800,
    Magenta = 0xF81F,
    Yellow = 0xFFE0,
    White = 0xFFFF
}

/**
       * Unicode representation
       * The unicode table is split into seven parts because of memory size and array size limitations of the microbit
       */
      let fontOne: number[] = [0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422,
      0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422,
      0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422]
      let fontTwo: number[] = [0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422,
      0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422, 0x0022d422, 0x00000000, 0x000002e0,
      0x00018060, 0x00afabea, 0x00aed6ea, 0x01991133, 0x010556aa, 0x00000060]
      let fontThree: number[] = [0x000045c0, 0x00003a20, 0x00051140, 0x00023880, 0x00002200, 0x00021080,
      0x00000100, 0x00111110, 0x0007462e, 0x00087e40, 0x000956b9, 0x0005d629, 0x008fa54c, 0x009ad6b7,
      0x008ada88, 0x00119531, 0x00aad6aa, 0x0022b6a2, 0x00000140, 0x00002a00]
      let fontFour: number[] = [0x0008a880, 0x00052940, 0x00022a20, 0x0022d422, 0x00e4d62e, 0x000f14be,
      0x000556bf, 0x0008c62e, 0x0007463f, 0x0008d6bf, 0x000094bf, 0x00cac62e, 0x000f909f, 0x000047f1,
      0x0017c629, 0x0008a89f, 0x0008421f, 0x01f1105f, 0x01f4105f, 0x0007462e]
      let fontFive: number[] = [0x000114bf, 0x000b6526, 0x010514bf, 0x0004d6b2, 0x0010fc21, 0x0007c20f,
      0x00744107, 0x01f4111f, 0x000d909b, 0x00117041, 0x0008ceb9, 0x0008c7e0, 0x01041041, 0x000fc620,
      0x00010440, 0x01084210, 0x00000820, 0x010f4a4c, 0x0004529f, 0x00094a4c]
      let fontSix: number[] = [0x000fd288, 0x000956ae, 0x000097c4, 0x0007d6a2, 0x000c109f, 0x000003a0,
      0x0006c200, 0x0008289f, 0x000841e0, 0x01e1105e, 0x000e085e, 0x00064a4c, 0x0002295e, 0x000f2944,
      0x0001085c, 0x00012a90, 0x010a51e0, 0x010f420e, 0x00644106, 0x01e8221e]
      let fontSeven: number[] = [0x00093192, 0x00222292, 0x00095b52, 0x0008fc80, 0x000003e0, 0x000013f1,
      0x00841080, 0x0022d422];

//% color=#1E90FF icon="\uf108" block="RB-TFT20-V2"
namespace RBTFT20 {
    // Panel size (your module uses a 240x320 panel centered in ST7789 GRAM)
    // We expose it as 240x320 and use default Y offset = 80.
    const TFTWIDTH = 240
    const TFTHEIGHT = 320

    // Wiring defaults (as you confirmed)
    let _sck: DigitalPin = DigitalPin.P13
    let _mosi: DigitalPin = DigitalPin.P15
    let _dc: DigitalPin = DigitalPin.P14
    let _rst: DigitalPin = DigitalPin.P16
    let _cs: DigitalPin = DigitalPin.P12
    let _useCS = false

    // Offset (some modules need this; keep configurable)
    let _xOffset = 0
    let _yOffset = 0

    let _inited = false

    enum TFTCommands {
        SWRESET = 0x01, //Software reset
        SLPOUT = 0x11, //Sleep out
        INVOFF = 0x20, //Display inversion off
        INVON = 0x21,  //Display inversion on  
        DISPON = 0x29, //Display on
        CASET = 0x2A, //Column address set
        RASET = 0x2B, //Row address set   
        RAMWR = 0x2C, //Memory write
        MADCTL = 0x36, //Memory data access control
        COLMOD = 0x3A //Interface pixel format
    }

    function hi(v: number): number { return (v >> 8) & 0xFF }
    function lo(v: number): number { return v & 0xFF }

    /*function csLow(): void {
        if (_useCS) pins.digitalWritePin(_cs, 0)
    }
    function csHigh(): void {
        if (_useCS) pins.digitalWritePin(_cs, 1)
    }*/

    // Send single command byte
    function writeCommand(cmd: number): void {
        //csLow()
        pins.digitalWritePin(_dc, 0)
        pins.spiWrite(cmd)
        //csHigh()
    }

    // Send command + parameter bytes (short transfers)
    function send(cmd: number, params: number[]): void {
        //csLow()
        pins.digitalWritePin(_dc, 0)
        pins.spiWrite(cmd)
        if (params && params.length) {
            pins.digitalWritePin(_dc, 1)
            for (let b of params) pins.spiWrite(b)
        }
        //csHigh()
    }

    // For pixel streaming: keep CS low and DC high while sending lots of bytes
    function beginPixels(): void {
        //csLow()
        pins.digitalWritePin(_dc, 0)
        pins.spiWrite(TFTCommands.RAMWR)
        pins.digitalWritePin(_dc, 1)
    }
    function endPixels(): void {
        //csHigh()
        pins.digitalWritePin(_dc, 0)
    }

    function setWindow(x0: number, y0: number, x1: number, y1: number): void {
        const xs = x0 
        const xe = x1 
        const ys = y0 
        const ye = y1 
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
        //if (_useCS) pins.digitalWritePin(_cs, 1)

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

      /*
      * Draw a straight line from one point to another
      */
     //% block="Draw line from x0:%x0|y0:%y0 to x1:%x1|y:%y1 with color:%color"
     //% x0.min=1 x0.max=130
     //% y0.min=1 y0.max=162
     //% x1.min=1 x1.max=130
     //% y1.min=1 y1.max=162
     //% weight=85
     export function drawLine(x0: number, y0: number, x1: number, y1: number, color: Color): void {
         let xDelta = x1 - x0
         let yDelta = y1 - y0

         if (Math.abs(yDelta) > Math.abs(xDelta)) {
             let ySteps = Math.abs(yDelta)
             let xIncrement = xDelta == 0 ? 0 : xDelta / ySteps
             let yIncrement = yDelta > 0 ? 1 : -1

             let x = x0
             let y = y0
             for (let steps = 0 ; steps <= ySteps ; steps++) {
                 drawPixel(x, y, color)
             }
         }
         else {
             let xSteps = Math.abs(xDelta)
             let yIncrement = yDelta == 0 ? 0 : yDelta / xSteps
             let xIncrement = xDelta > 0 ? 1 : -1

             let y = y0
             let x = x0
             for (let steps = 0 ; steps <= xSteps ; steps++) {
                 drawPixel(x, y, color)
                 y = y + yIncrement
                 x = x + xIncrement
             }
         }
     }

      /*
      * Display string at given coordinates
      */
      //% block="Show string:%string at x:%x and y:%y with zoom-level:%zoom color:%color and background color:%bgcolor"
      //% weight=70
      //% x.min=1 x.max=130
      //% y.min=1 y.max=162
      //% zoom.min=1 zoom.max=5
      export function showString(text: string, x: number, y:number, zoom: number, color: Color, bgColor: Color): void {
          let hiColor = (color >> 8) % 256
          let loColor = color % 256
          let bgHiColor = (bgColor >> 8) % 256
          let bgLoColor = bgColor % 256
          let zoomFactor = zoom
          let index = 0
          let colsel = 0
          let unicode = 0
          let charIndex = 0

          for (let stringPos = 0 ; stringPos < text.length ; stringPos++) {
            // Get character at current string position and find the corresponding unicode representation
            charIndex = text.charCodeAt(stringPos)
            if (charIndex < 20) {
                unicode = fontOne[charIndex]
            }
            else if (charIndex < 40) {
                unicode = fontTwo[charIndex - 20]
            }
            else if (charIndex < 60) {
                unicode = fontThree[charIndex - 40]
            }
            else if (charIndex < 80) {
                unicode = fontFour[charIndex - 60]
            }
            else if (charIndex < 100) {
                unicode = fontFive[charIndex - 80]
            }
            else if (charIndex < 120) {
                unicode = fontSix[charIndex - 100]
            }
            else if (charIndex < 140) {
                unicode = fontSeven[charIndex - 120]
            }


             /*
      * Data-Mode to transfer data to TFT for further processing
      */
     function enterDataMode(): void {
         // Activate command mode
         pins.digitalWritePin(DigitalPin.P14, 0)
         // select TFT as SPI-target
         //pins.digitalWritePin(DigitalPin.P16, 0)
         pins.spiWrite(TFTCommands.RAMWR)
         // Activate data mode
         pins.digitalWritePin(DigitalPin.P14, 1)
     }


            // Set position and go into data mode
            setWindow (x + stringPos * 5 * zoomFactor, y, x + stringPos * 5 * zoomFactor + 5 * zoomFactor - 1, y + 5 * zoomFactor -1)
            enterDataMode()

            // write character to display
            for (let indexY = 0 ; indexY < 5 ; indexY++) {
                for (let a = 0 ; a < zoomFactor ; a++) {
                    for (let indexX = 0 ; indexX < 5 ; indexX++) {
                        index = indexY + indexX * 5
                        colsel = (unicode & (1 << index))
                        for (let b = 0 ; b < zoomFactor ; b++) {
                            if (colsel) {
                                pins.spiWrite(hiColor);
                                pins.spiWrite(loColor);
                            }
                            else {
                                pins.spiWrite(bgHiColor);
                                pins.spiWrite(bgLoColor);
                            }
                        }
                    }
                }
            }

            exitDataMode();
          }
      }

       /*
      * Finish data-mode and set back to command-mode
      */
     function exitDataMode(): void {
         //pins.digitalWritePin(DigitalPin.P16, 1) // de-elect the TFT as SPI target
         pins.digitalWritePin(DigitalPin.P14, 0) // command/data = command
     }





     

}
     