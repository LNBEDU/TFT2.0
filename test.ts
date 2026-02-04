// Initialize TFT Display
RBTFT20.init()

// Clear screen - replaces whole screen with a black rectangle
RBTFT20.clearScreen()

// Draw a single red pixel
RBTFT20.drawPixel(10, 10, Color.Red)
basic.pause(1000)

// Draw a straight blue line
RBTFT20.drawLine(0, 0, 100, 100, Color.Blue)
basic.pause(1000)

// Draw a yellow rectangle
RBTFT20.drawRectangle(0, 0, 100, 120, Color.Yellow)
basic.pause(1000)

// Draw a green circle
RBTFT20.drawCircle(50, 50, 50, Color.Green)
basic.pause(1000)

// Clear screen - replaces whole screen with a black rectangle
RBTFT20.clearScreen()

// Show white text with black background
RBTFT20.showString("I am your RB-TFT2.0!", 10, 10, 1, Color.White, Color.Black)
basic.pause(1000)

// Turn off display
RBTFT20.turnOff()
basic.pause(1000)

// Turn on display
RBTFT20.turnOn()
