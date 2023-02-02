class Button {
  // Button location and size
  float x;
  float y;
  float w;
  float h;
  //Is the button on or off?
  boolean on;

  // Construcor initilaizes all variables
  Button(float tempX, float tempY, float tempW, float tempH) {
    x  = tempX;
    y  = tempY;
    w  = tempW;
    h  = tempH;
    on = false;   // Button akwats starts as iff
  }

  void display() {
    stroke(0);
    if (mouseX>=x && mouseX<=x+w && mouseY>=y && mouseY<=y+h) {
      fill(127);
    } else {
      fill(200);
    }
    rect(x, y, w, h);
  }
}
