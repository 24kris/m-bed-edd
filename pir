int pirSensor = 2;
int relayInput = 7;
void setup() {
  pinMode(pirSensor, INPUT);
  pinMode(relayInput, OUTPUT);  
  Serial.begin(9600);
}
void loop() {
  int sensorValue = digitalRead(pirSensor);
  if (sensorValue == 1) {
    digitalWrite(relayInput, HIGH);
   // Serial.println("detected");// The Relay Input works Inversly
   Serial.println("1");
  }
  else{
    digitalWrite(relayInput, LOW);
    Serial.println("0");
   // Serial.println("no one there");
    }
}
