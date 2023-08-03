int cdsPin = A0;
int ledPin = 10;

void setup() {
  pinMode(cdsPin, INPUT);
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
  // put your setup code here, to run once:

}

void loop() {
  int sensorValue = analogRead(cdsPin);
  Serial.println(sensorValue);
  if(sensorValue < 600){
    digitalWrite(ledPin, 1);
    
  }else{
    digitalWrite(ledPin, 0);
  }
  delay(10);

  // put your main code here, to run repeatedly:

}
