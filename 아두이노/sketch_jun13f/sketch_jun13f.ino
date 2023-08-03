#include <Servo.h>

Servo myServo; 





void setup() {
  myServo.attach(8);
  }

void loop() {
  myServo.write(0);
  delay(2000);

  myServo.write(179);
  delay(200);

  //0도부터 179도까지 돌아가는 for문을 작성해주세요
  for(int i = 0; i < 179; i++)
  myServo.write(i);
  delay(10);

  




}
