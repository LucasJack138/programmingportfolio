// Lucas Jackson | Aug 30 2022 | ColDet
float xspeed, yspeed;
int xpos, ypos, wdth, ht;
// Ssetup runs once at the beginning
void setup() {
  size(displayWidth, displayHeight);
  background (0);
  xspeed = 10;
  yspeed = 15;
  wdth = 20;
  ht = 20;
  noStroke();
  xpos = width/2;
  ypos = height/2;
  frameRate(60);
}
// Draw runs on a loop
void draw() {
  fill(255);
  ellipse(xpos, ypos, wdth, ht); //<>//
  xpos += xspeed;
  ypos += yspeed;
  if (xpos >= width-wdth/2 || xpos <= wdth/2) {
    xspeed *= -1;
  }
  if (ypos >= height-ht/2 || ypos <= ht/2) {
    yspeed = yspeed * -1;
  }
}
