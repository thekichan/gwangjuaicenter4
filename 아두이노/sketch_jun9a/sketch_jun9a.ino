int ledPin = 13; // LED_BUILTIN
void setup() {
  pinMode(ledPin, OUTPUT); // 13번 핀에 엑츄에이터 연결됨
  // put your setup code here, to run once:

}

void loop() {
  //  자동완성 : Ctrl + Space
  // 단 별로 안 좋음 

  int ledPin = 13;

  digitalWrite(ledPin, 1);
  delay(1000);
  // put your main code here, to run repeatedly:

  digitalWrite(ledPin, 0);
  delay(1000);

}


