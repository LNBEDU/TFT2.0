
/**
  * RB-TFT2.0-V2 Block
  */
  //% color="#275C6B" icon="\uf26c" weight=95 block="RB-TFT20-V2"
 namespace RBTFT20 {

    /**
     * Colors (RGB565)
     */
    export enum TFTColor {
        //% block="Black"
        Black = 0x0000,
        //% block="White"
        White = 0xFFFF,
        //% block="Red"
        Red = 0xF800,
        //% block="Green"
        Green = 0x07E0,
        //% block="Blue"
        Blue = 0x001F,
        //% block="Yellow"
        Yellow = 0xFFE0,
        //% block="Cyan"
        Cyan = 0x07FF,
        //% block="Magenta"
        Magenta = 0xF81F,
        //% block="Orange"
        Orange = 0xFD20,
        //% block="Pink"
        Pink = 0xF81F
    }


    // ===== Pin configuration (default for many ST7789 modules on micro:bit) =====
    // SPI: SCK=P13, MOSI=P15 (MISO not used -> pick any free pin, default P12)
    let _sck: DigitalPin = DigitalPin.P13
    let _mosi: DigitalPin = DigitalPin.P15
    let _miso: DigitalPin = DigitalPin.P12

    // Control pins (adjust to your wiring)
    let _dc: DigitalPin = DigitalPin.P14
    let _rst: DigitalPin = DigitalPin.P16

    // If CS is tied to GND, set _useCS=false. If CS is connected to a pin, set _useCS=true.
    let _cs: DigitalPin = DigitalPin.P16
    let _useCS: boolean = false

    /**
     * Set TFT pins (for custom wiring).
     * If your CS pin is connected to GND, set useCS=false.
     */
    //% block="TFT set pins SCK %sck MOSI %mosi DC %dc RST %rst CS %cs useCS %useCS"
    //% weight=99
    export function setPins(sck: DigitalPin, mosi: DigitalPin, dc: DigitalPin, rst: DigitalPin, cs: DigitalPin, useCS: boolean): void {
        _sck = sck
        _mosi = mosi
        _dc = dc
        _rst = rst
        _cs = cs
        _useCS = useCS
    }


     // Display commands & constants
     let TFTWIDTH = 240
     let TFTHEIGHT = 320

     /**
      * TFT Commands
      */
      enum TFTCommands {
          NOP = 0x00,
          SWRESET = 0x01,
          SLPOUT = 0x11,
          NORON = 0x13,
          INVOFF = 0x20,
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
          GMCTRP1 = 0xE0,
          GMCTRN1 = 0xE1,
          FRCTRL2 = 0xC6,
          PWCTRL1 = 0xD0,
          DELAY = 0xFFFF
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


     /*
      * Send command to display
      */
     // RB-TFT20.ts 파일 내부 예시
    function send(command: number, parameter: Array<number>): void {
        // CS (optional)
        if (_useCS) pins.digitalWritePin(_cs, 0)

        // Command
        pins.digitalWritePin(_dc, 0)
        pins.spiWrite(command)

        // Data
        pins.digitalWritePin(_dc, 1)
        for (let item of parameter) {
            pins.spiWrite(item)
        }

        if (_useCS) pins.digitalWritePin(_cs, 1)
    }

     /*
      * Set pixel address window - minimum and maximum pixel bounds
      */
   function setWindow(x0: number, y0: number, x1: number, y1: number): void {
    const X_OFFSET = 0
    const Y_OFFSET = 80

    const xs = x0 + X_OFFSET
    const xe = x1 + X_OFFSET
    const ys = y0 + Y_OFFSET
    const ye = y1 + Y_OFFSET

    send(0x2A, [
        (xs >> 8) & 0xFF, xs & 0xFF,
        (xe >> 8) & 0xFF, xe & 0xFF
    ])
    send(0x2B, [
        (ys >> 8) & 0xFF, ys & 0xFF,
        (ye >> 8) & 0xFF, ye & 0xFF
    ])
    send(0x2C) // RAMWR (데이터 쓰기 시작)
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

     /*
      * Finish data-mode and set back to command-mode
      */
     function exitDataMode(): void {
         //pins.digitalWritePin(DigitalPin.P16, 1) // de-elect the TFT as SPI target
         pins.digitalWritePin(DigitalPin.P14, 0) // command/data = command
     }

     /*
      * Initial TFT setup
      */
     //% block="Initialize TFT Display"
     //% weight=100

     export function init(): void {

        if (_useCS) {
            pins.digitalWritePin(_cs, 1)
        }
        pins.spiPins(_mosi, _miso, _sck);
        pins.spiFormat(8, 3); // IMPORTANT: SPI MODE3 for many ST7789VW modules
        pins.spiFrequency(4000000);
// DC = P14
        pins.digitalWritePin(_dc, 1);


        // Hardware reset (recommended)
        pins.digitalWritePin(_rst, 1)
        basic.pause(5)
        pins.digitalWritePin(_rst, 0)
        basic.pause(20)
        pins.digitalWritePin(_rst, 1)
        basic.pause(120)

        // Software reset
        send(0x01, []);
        basic.pause(150);

        send(0x11, []);
        basic.pause(120);

        send(0x3A, [0x55]); // 16bit color

        send(0x36, [0x00]); // 방향

        // --- ST7789 핵심 설정 ---
        send(0xB2, [0x0C,0x0C,0x00,0x33,0x33]);
        send(0xB7, [0x35]);
        send(0xBB, [0x19]);
        send(0xC0, [0x2C]);
        send(0xC2, [0x01]);
        send(0xC3, [0x12]);
        send(0xC4, [0x20]);
        send(0xC6, [0x0F]);
        send(0xD0, [0xA4,0xA1]);

        send(0xE0, [0xD0,0x04,0x0D,0x11,0x13,0x2B,0x3F,0x54,0x4C,0x18,0x0D,0x0B,0x1F,0x23]);
        send(0xE1, [0xD0,0x04,0x0C,0x11,0x13,0x2C,0x3F,0x44,0x51,0x2F,0x1F,0x1F,0x20,0x23]);

        send(0x21, []); // INVON (필요한 패널 많음)

        send(0x29, []);
    }


    

     /*
      * Draw single pixel
      */
     //% block="Draw single pixel at x:%x|y:%y with color:%color"
     //% x.min=1 x.max=130
     //% y.min=1 y.max=162
     //% weight=90
     export function drawPixel(x: number, y: number, color: TFTColor): void {
         setWindow(x, y, x+1, y+1)
         send(TFTCommands.RAMWR, [color >> 8, color])
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
     export function drawLine(x0: number, y0: number, x1: number, y1: number, color: TFTColor): void {
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
      * Draw rectangle with a given color
      */
     //% block="Draw rectangle at x:%x|y:%y with width:%width|height:%height|color:%color"
     //% x.min=1 x.max=130
     //% y.min=1 y.max=162
     //% weight=80
     export function drawRectangle(x: number, y: number, width: number, height: number, color: TFTColor): void {

         // Convert color
         let hiColor = (color >> 8) % 256
         let loColor = color % 256

         setWindow(x, y, x + width - 1, y + height - 1)
         enterDataMode()

         // Draw rectangle
         for(let indexY = height ; indexY > 0 ; indexY--) {
             for(let indexX = width ; indexX > 0 ; indexX--) {
                 pins.spiWrite(hiColor);
                 pins.spiWrite(loColor);
             }
         }

         exitDataMode()
     }

     /*
      * Draw circle with a given radius
      */
     //% block="Draw circle at: x:%x|y:%y with radius:%r and color:%color"
     //% x.min=1 x.max=130
     //% y.min=1 y.max=162
     //% weight=75
     export function drawCircle(x: number, y: number, radius: number, color: TFTColor): void {
        for(let y1 = -radius ; y1 <= 0 ; y1++) {
            for(let x1 = -radius ; x1 <= 0 ; x1++) {
                if((x1 * x1 + y1 * y1) <= (radius * radius)) {
                    drawPixel(x+x1, y+y1, color)
                    drawPixel(x+x1, y-y1, color)
                    drawPixel(x-x1, y+y1, color)
                    drawPixel(x-x1, y-y1, color)
                }
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
      export function showString(text: string, x: number, y:number, zoom: number, color: TFTColor, bgColor: TFTColor): void {
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

     //% block="Clear screen"
     //% weight=65
     export function clearScreen(): void {
         drawRectangle(0, 0, TFTWIDTH, TFTHEIGHT, 0)
     }

     //% block="Turn display off"
     //% weight=60
     export function turnOff(): void {
         send(TFTCommands.DISPOFF, [])
     }

     //% block="Turn display on"
     //% weight=55
     export function turnOn(): void {
         send(TFTCommands.DISPON, [])
     }


}
