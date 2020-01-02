#define CORRIENTEM (A0) // pin de corriente de voltaje variable
#define CORRIENTE5 (A1) // pin de corriente de 5v
#define RELEM (2) // rele de corriente de voltaje variable
#define RELE5 (3) // rele de corriente de 5v

unsigned long espera5v = 0;
unsigned long esperamv = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(2, OUTPUT);
  digitalWrite(2, HIGH);
  pinMode(3, OUTPUT);
  digitalWrite(3, HIGH);
  tone(11, 440, 500);
  delay(500);
  tone(11, 554, 500);
  delay(500);
  tone(11, 659, 500);
  delay(500);
  tone(11, 440*2, 500);
  delay(500);
  //digitalWrite(2, LOW);
  digitalWrite(3, LOW);
  delay(500);
  digitalWrite(RELE5, LOW);
  digitalWrite(RELEM, LOW);
}

void loop() {
  // put your main code here, to run repeatedly:
  double corriente5 = lecturaM(CORRIENTE5);
  if (corriente5 > 3 || corriente5 < -0.2){
    digitalWrite(RELE5, HIGH);
    espera5v = millis()+5000;
    pitido(440,5000);
  }
  if (espera5v <= millis()){
    digitalWrite(RELE5, LOW);
    delay(10);
    corriente5 = lecturaM(CORRIENTE5);
    
  }
  double corrienteM = lecturaM(CORRIENTEM);
  if (corrienteM > 3 || corrienteM < -0.2){
    digitalWrite(RELEM, HIGH);
    esperamv = millis()+5000;
    pitido(440*2,5000);
  }
  if (esperamv <= millis()){
    digitalWrite(RELEM, LOW);
  }

  
}

double lecturaM(int pin) {
  #define mVperAmp (150) // use 100 for 20A Module and 66 for 30A Module
  #define ACSoffset (2500) 
  
  int RawValue = lecturaFiltrada(pin);
  double Voltage = (RawValue / 1024.0) * 5000;
  double Amps = ((Voltage - ACSoffset) / mVperAmp);

  return -Amps;
}

int lecturaFiltrada(int pin) {
#define LECTURAS (10)
  int result = analogRead(pin);
  for (int i = 1; i < LECTURAS; i++) {
    delay(2);
    result += analogRead(pin);
  }
  return result / LECTURAS;
}

void pitido(int freq, int duracion){
  tone(11, freq, duracion);
}
