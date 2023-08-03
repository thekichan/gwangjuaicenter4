int answer; // 정답

void setup() {
  Serial.begin(9600);
  randomSeed(analogRead(0));

  quiz();
}
void loop() {
  if (Serial.available()) {
    int input = Serial.parseInt();

    Serial.print(input);

    if (input == answer) {
      Serial.println(" O");
    } else {
      Serial.println(" X");
    }

    quiz();
  }
}

void quiz(){
    int num = random(1, 10);
    int num2 = random(1, 10);
    answer = num + num2;
    // num : 3, num2 : 5
    // 3 + 5 =
    Serial.print(num);
    Serial.print(" + ");
    Serial.print(num2);
    Serial.print(" = ");
}







