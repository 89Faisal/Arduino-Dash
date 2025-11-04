import processing.serial.*;

Serial myPort;
int pot = 0;
int button = 0;

void setup() {
  size(300, 300);
  background(0);
  
  // Change COM port name to your Arduino's (e.g., "COM10" on Windows)
  myPort = new Serial(this, "COM10", 9600);
  myPort.bufferUntil('\n');
}

void draw() {
  background(0);

  // Draw potentiometer bar
  fill(0, 150, 255);
  float barHeight = map(pot, 0, 1023, 0, height - 50);
  rect(100, height - barHeight, 100, barHeight);

  // Show numeric value
  fill(255);
  textSize(16);
  text("Pot: " + pot, 110, 30);

  // Show button status
  if (button == 1) {
    fill(0, 255, 0);
    text("Button: PRESSED", 80, 60);
  } else {
    fill(255, 0, 0);
    text("Button: NOT pressed", 60, 60);
  }

  // Instructions
  fill(255, 255, 0);
  text("Press 'A' = LED ON", 80, height - 40);
  text("Press 'B' = LED OFF", 80, height - 20);
}

void keyPressed() {
  if (key == 'A' || key == 'a') {
    myPort.write('A');
  }
  if (key == 'B' || key == 'b') {
    myPort.write('B');
  }
}

void serialEvent(Serial myPort) {
  String inString = myPort.readStringUntil('\n');
  if (inString != null) {
    inString = trim(inString);
    String[] values = splitTokens(inString, ",");
    if (values.length == 2) {
      pot = int(values[0]);
      button = int(values[1]);
    }
  }
}
