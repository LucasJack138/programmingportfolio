//Lucas Jackson | 11 Oct 2022 | ScreenSaver
float xpos, ypos, strokeW, pointCount;
int frames = 0;
Lines[] myLines = new Lines [10];

void setup() {
  fullScreen();
  size(displayWidth, displayHeight);
  background(100,255);
  xpos = random(width);
  ypos = random(height);
  for (int i=0; i<myLines.length; i++) {
    myLines[i] = new Lines(random(width), random(height), random(1, 5), random(1, 20));
  }
}

void draw() {
  strokeW = random(1, 2);
  pointCount = (random(1,2));
  stroke(0);
  strokeWeight(strokeW);
  if (frames>500) {
    background (100,255);
    frames = 0;
  }
  //My Lines
  for (int i = 0; i<myLines.length; i++) {
    Lines iLines = myLines[i];
    iLines.display();
  }
  frames++;
}
