// C++
// 조건문
// if(조건식){
// 실행문장1;
//}else{
//실행문장2;
//}


int btn = 2;
int ledPin = 13;
int btn2 = 3;
int ledPin2 = 12;


void setup() {
  // put your setup code here, to run once:
  pinMode(btn, INPUT);
  pinMode(ledPin, OUTPUT);

  pinMode(btn2, INPUT);
  pinMode(ledPin2, OUTPUT);



  // Serial 모니터 
  Serial.begin(9600); //baud rate

}

void loop() {

//만약, btnState가 1이라면
// 13번핀에 디지털 신호 1을 보내겠다
// 아니라면, 디지털 신호 0을 보내겠다

  int btnState = digitalRead(btn);
  Serial.println(btnState);

  int btnState2 = digitalRead(btn2);

 // C++ 언어에서 다음과 같은 특지을 가진다
 // true와 false가 들어가야 하는 부부에 1또는 0을 넣어도 됨, 2,3,4 도 1로 인지함
 

 
  if(btnState == 1){
   digitalWrite(13, 1);
  }else{
    digitalWrite(13, 0);
  }

  if(btnState2 == 1){
    digitalWrite(12, 1);

  }else{
    digitalWrite(12, 0);


  }
  delay(10); // 0.01초
  // put your main code here, to run repeatedly:

}
