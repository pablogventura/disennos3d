int espera = 1000;
int currentV = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(2, OUTPUT);
  digitalWrite(2, HIGH);
  pinMode(3, OUTPUT);
  digitalWrite(3, HIGH);
  tone(11, 220, 500);
  delay(500);
  digitalWrite(2, LOW);
  digitalWrite(3, LOW);
}

void loop() {
  // put your main code here, to run repeatedly:
  espera = 1000;
  currentV = lecturaFiltrada(A0);
  Serial.println(currentV);
  //return;
  if (currentV < 400) {
    delay(50);
    currentV = lecturaFiltrada(A0);
  }
  while (currentV < 400) {
    digitalWrite(2, HIGH);
    //Serial.println(currentV);
    tone(11, 110 * (espera / 1000));
    delay(espera);
    espera = espera * 2;
    digitalWrite(2, LOW);
    delay(5);
    currentV = lecturaFiltrada(A0);
  }
  noTone(11);
  currentV = lecturaFiltrada(A1);
  Serial.println(currentV);
  while (currentV > 520) {
    digitalWrite(3, HIGH);
    //Serial.println(currentV);
    tone(11, 110 * (espera / 1000));
    delay(espera);
    espera = espera * 2;
    digitalWrite(3, LOW);
    delay(5);
    currentV = lecturaFiltrada(A1);
  }
  noTone(11);
}

int lecturaFiltrada(int pin) {
  #define LECTURAS (5)
  int result = analogRead(pin);
  for (int i = 1; i < LECTURAS;i++) {
    delay(2);
    result += analogRead(pin);
  }
  return result / LECTURAS;
}
