int potPin = A0;       // Potentiometer connected to A0
int buttonPin = 7;     // Button connected to pin 7
int ledPin = 8;        // LED connected to pin 8
int ledPin2 = 4;       // White LED

void setup() {
  Serial.begin(9600);  // Match this baud rate in Processing
  pinMode(buttonPin, INPUT);
  pinMode(ledPin, OUTPUT);
  pinMode(ledPin2, OUTPUT);
}

void loop() {
  // Read values
  int potValue = analogRead(potPin);
  int buttonValue = digitalRead(buttonPin);

  // Send data to Processing: "pot,button"
  Serial.print(potValue);
  Serial.print(",");
  Serial.println(buttonValue);

  // White LED Control from Button Switch
  if (buttonValue == HIGH)
  {
    digitalWrite(ledPin2, HIGH);
  }
  else 
  {
    digitalWrite(ledPin2, LOW);
  }

  // Check for serial commands from Processing
  if (Serial.available() > 0) {
    char val = Serial.read();
    if (val == 'A' || val == 'a') {
      digitalWrite(ledPin, HIGH); // LED ON
    } 
    else if (val == 'B' || val == 'b') {
      digitalWrite(ledPin, LOW);  // LED OFF
    }
  }

  delay(200); // small delay
}
