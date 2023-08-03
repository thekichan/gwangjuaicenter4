int pinRed = 13;
int pinBlue = 12;
int pinGreen = 11;

int btn = 2;


void setup() {
  pinMode(pinRed, OUTPUT);
  pinMode(pinBlue, OUTPUT);
  pinMode(pinGreen, OUTPUT);
  Serial.begin(9600);
  pinMode(btn, INPUT);
  
}

int cnt = 0;
boolean isCheck = true;

void loop() {
  int sensorValue = digitalRead(btn);
  
  if(sensorValue == 1) {

    if(isCheck == true){
      cnt++;
      isCheck = false;
    }
    
  }else{
    isCheck = true;
  }
  Serial.println(cnt);
  
  delay(10);


if (cnt % 4 == 1){
  turnOnRed();
} else if (cnt % 4 == 2){
  turnOnBlue();
} else if (cnt % 4 == 3){
  turnOnGreen();
} else if(cnt % 4 == 0){
  turnOffAll();
}

}
 void turnOnRed(){

  digitalWrite(pinRed, 1);
  digitalWrite(pinBlue, 0);
  digitalWrite(pinGreen, 0);
}


void turnOnBlue(){
  digitalWrite(pinRed, 0);
  digitalWrite(pinBlue, 1);
  digitalWrite(pinGreen, 0);
}


void turnOnGreen(){
  digitalWrite(pinRed, 0);
  digitalWrite(pinBlue, 0);
  digitalWrite(pinGreen, 1);
}


void turnOffAll(){
  digitalWrite(pinRed, 0);
  digitalWrite(pinBlue, 0);
  digitalWrite(pinGreen, 0);
}






  