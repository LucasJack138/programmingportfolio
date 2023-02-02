//Lucas Jackson | Oct 18 2022 | Arrays
Button b1;
Button b2;
Button[] buttons = new Button[10];

void setup() {
  size(200,200);
  b1 = new Button(20,20,75,40);
  b2 = new Button(20,100,75,40);
  buttons[0] = new Button(20,170,75,40);
}

void draw() {
  background(255);
  b1.display();
  b2.display();
  buttons[0].display();
}
