//Lucas Jackson | 4 Oct 2022 | Converter App
int f=0;
boolean play;
void setup() {
  size (600, 300);
  background(125);
}

void draw() {
  background (125);
  fill(255);
  textSize(40);
  text("Yard to Inch App", 300, 30);
  textSize(15);
  colorMode(HSB);
  if (f>=255) {
    f=0;
  } else {
    f++;
  }
  fill(f+100, 254, 254);
  colorMode(HSB);
  fill(f+100, 254, 254);
  text("By:Lucas Jackson", 300, 50);
  colorMode(RGB);
  fill(256);
  line(0, 150, width, 150);
  for (int i=0; i<width; i+=40) {
    line(i, 145, i, 155);
    fill(255);
    textSize(10);
    textAlign(CENTER);
    text(i, i, 130);
  }
  fill(255);
  ellipse(mouseX, 150, 5, 5);
  text(mouseX*36, mouseX, 140);
  text("Yard:" + yardToInch(mouseX), width/2, 200);
  text("Inch:" + inchToYard(mouseX/36), width/2, 220);
  //startscreen
  if (!play) {
    startScreen();
  }
}
int yardToInch(int val) {
  val = val / 36;
  return val;
}

int inchToYard(int val) {
  val = val * 36;
  return val;
}

void startScreen() {
  background(175,0,0);
  fill(0);
  textSize(20);
  text("Welcome to the distance map", width/2, height/2-55);
  text("this is a distance convertor\nfrom Yard to Inch", width/2, height/2-35);
  text("If you want to play this game\nPress Spacebar",width/2,height/2+20);
}
 void keyPressed() {
  if(keyCode==' ') {
    play=true;
  }
}
