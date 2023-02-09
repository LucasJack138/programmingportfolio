class Button {
  // Member Variable
  int x, y, w, h;
  color c1, c2;
  char val;
  boolean on;

  // Constructor
  Button(int x, int y, int w, int h, char val, color c1) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    this.c1=c1;
    c2 = color(127,220,212);
    on = false;
  }

  // Member Methods
  void display() {
    rectMode(CENTER);
    if (on) {
      fill(c2);
    } else {
      fill(c1);
    }
    rectMode(CENTER);
    rect(x, y, w, h, 25);
    textAlign(CENTER);
    fill(255);
    textSize(30);
    if (val == 'C') {
      textSize(30);
      text("C", x, y+10);
    } else if (val =='s') {
      textSize(30);
      text("cos", x, y+10);
    } else if (val =='S') {
      textSize(30);
      text("sin", x, y+10);
    } else if (val =='c') {
      textSize(20);
      text("³", x-6, y+8);
      textSize(25);
      text("√", x-4, y+11);
      text("x", x+8, y+11);
      text("_", x+8, y-12);
    } else {
      text(val, x, y+10);
    }
  }

  void hover(int mx, int my) {
    on = (mx > x - w/2 && mx < x + w/2 && my > y - h/2 && my < y + h/2);
  }
}
