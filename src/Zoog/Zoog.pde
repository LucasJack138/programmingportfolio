// Lucas Jackson | Sept 8 2022 | Zoog

void setup() {
  size(1000,1000);
}

void draw() {
  //background(255);
  rectMode(CENTER);
  //zoog(random(width),random(height));
  zoog(mouseX,mouseY);
  zoog(mouseX-40,mouseY);
  zoog(mouseX+40,mouseY);
}

void zoog(float x, float y){
  //Zoog's body
  stroke(16,255,0);
  fill(0,255,0);
  rect(x,y,20,100);
  
  //Zoog's head
  stroke(0);
  fill (255,0,0);
  ellipse(x,y-30,60,60);
  
  //Zoog's eyes
  fill(255,0,0);
  ellipse(x+18,y-30,16,32);
  fill(255,255,0);
  ellipse(x-18,y-30,16,32);
  
  //Zoog's eyes
  fill(255);
  ellipse(x+18,y-30,9,9);
  fill(255);
  ellipse(x-18,y-30,9,9);
  stroke(0);
  line(x-10,y+50,x-20,y+60);
  line(x+10,y+50,x+20,y+60);
}
