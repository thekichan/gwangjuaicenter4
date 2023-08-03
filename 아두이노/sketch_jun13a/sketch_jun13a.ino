void setup() {
  // put your setup code here, to run once:

}
int melody[] = {262, 262, 294, 330, 349, 392, 440, 494, 523};
int song[] = {1, 3, 5, 1, 3, 5};
int length = sizeof(song) / sizeof(int);

void loop() {
  //8번핀에 연결된 Piezo Buzzer에
  //330Hz의 진동수를 100ms (0.1s)동안 울려라!

  for(int i = 0 ; i < length;  i++){
    tone(8, melody[song[i]], 100);
  delay(200);
  }
  


}
