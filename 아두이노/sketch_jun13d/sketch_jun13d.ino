int answer;  // 정답
int cnt;     // 정답 개수

void setup() {
  cnt = 0;

  Serial.begin(9600);
  randomSeed(analogRead(0));

  int num = random(1, 10 * (cnt + 1));
  int num2 = random(1, 10 * (cnt + 1));
  answer = num + num2;

  Serial.print(num);
  Serial.print(" + ");
  Serial.print(num2);
  Serial.print(" = ");
}
void loop() {
  if (Serial.available()) {
    int input = Serial.parseInt();

    Serial.print(input);

    if (input == answer) {
      Serial.println(" O");
      cnt++;
    } else {
      Serial.println(" X");
    }

    int num = random(1, 10 * (cnt + 1));
    int num2 = random(1, 10 * (cnt + 1));
    answer = num + num2;

    Serial.print(num);
    Serial.print(" + ");
    Serial.print(num2);
    Serial.print(" = ");
  }
}