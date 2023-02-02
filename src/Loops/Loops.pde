//Lucas Jackson | Sept 27, 2022 | loops //<>//

int x,y;

void setup() {
  size(400,400);
  frameRate(10);
  //set start coords
  x=10;
  y=10;
}

void draw() {
  fill(255);
  drawName();
  noLoop();
}

//Algorithm for your first name
void drawName() {
  moveDown(100);
  moveRight(50);
  moveUp(20);
  moveDown(20);
  moveRight(30);
  moveUp(30);
  moveDown(30);
  moveRight(40);
  moveUp(100);
  moveLeft(30);
  moveRight(60);
  
}

//Method to draw right line
void moveRight(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i,y);
  }
  x=x+(rep);
}
void moveLeft(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i,y);
  }
  x=x-(rep);
}
void moveUp(int rep) {
  for (int i=0; i<rep; i++) {
    point(x,y-i);
  }
  y=y-(rep);
}
void moveDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x,y+i);
  }
  y=y+(rep);
} //<>//
