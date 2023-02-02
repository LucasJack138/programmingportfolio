//Lucas jackson | 4 Oct 2022 | Etch-A-Sketch
int x, y;

void setup() {
  size(500, 500);
  x = width/2;
  y = height/2;
  background(185);
}

void draw() {
  stroke(0);
  strokeWeight(3);
  if(keyPressed) {
    if (key == 'w') {
      moveUp (5);
    } else if (key =='a') {
      moveLeft(5);
    }else if (key =='s') {
      moveDown(5);
    }else if (key =='d') {
      moveRight(5);
    }
  }
}

void mousePressed() {
  saveFrame("image-######.png");
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      moveUp(1);
    } else if (keyCode == DOWN) {
      moveDown(1);
    } else if (keyCode == LEFT) {
      moveLeft(1);
    } else if (keyCode == RIGHT) {
      moveRight(1);
    }
  }
}
void moveRight(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y);
  }
  x=x+(rep);
}
void moveLeft(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y);
  }
  x=x-(rep);
}
void moveUp(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y-i);
  }
  y=y-(rep);
}
void moveDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y+i);
  }
  y=y+(rep);
}
