// Lucas Jackson | 4 Oct 2022 | Temp Converter

void setup() {}

void draw() {
  println(farToCel(50.0));
  println(celToFar(19.4));
}

float farToCel(float val) {
  val = (val-32) * 5/9;
  return val;
}

float celToFar(float val) {
  val = val * 9/5 + 32;
  return val;
}
