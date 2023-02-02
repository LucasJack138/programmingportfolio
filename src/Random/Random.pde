// Lucas Jackson | September 6 2022 | Random

void setup(){
  size(displayWidth,displayHeight);
  background(128);
}

void draw(){
  //background(128);
  noStroke();
  fill(random(256),random(256),random(256));
  ellipse(mouseX,mouseY,random(100),random(100));
  ellipse(mouseX,mouseY,mouseX,mouseY);
  
}
