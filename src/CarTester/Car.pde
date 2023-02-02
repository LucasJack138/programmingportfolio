class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  boolean rightOrLeft;

Car() {
  c=color(random(255),random(255),random(255));
  xpos=random(width);
  ypos=random(height);
  xspeed= random(15,30);
}
void display() {
  rectMode(CENTER);
  fill(c);
  rect(xpos,ypos,20,10);
  fill(0);
  rect(xpos-7,ypos-5,6,2);
  rect(xpos-7,ypos+5,6,2);
  rect(xpos+7,ypos-5,6,2);
  rect(xpos+7,ypos+5,6,2);
}
void driveRight() {
  xpos=xpos+xspeed;
  if(xpos>width) {
    xpos=0;
  }
}
void driveLeft() {
  xpos-=xspeed;
  if(xpos<0) {
    xpos = width;
  }
}
}
