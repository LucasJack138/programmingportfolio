class Rock {
  int x, y, diam, speed, health;
  PImage rock;

  // Constructor
  Rock() {
    x = int(random(width));
    y = -100;
    diam = int(random(50, 225));
    speed = int(random(3, 10));
    int rand = int(random(3));
    if (rand == 0) {
      rock= loadImage("Rock1.png");
    } else if (rand ==1) {
      rock = loadImage("Rock.png");
    } else if (rand ==2) {
      rock = loadImage("Rock2.png");
    }
  }

  void display() {
    imageMode(CENTER);
    rock.resize(diam, diam);
    image(rock, x, y);
  }

  void move() {
    y += speed;
  }

  boolean reachedBottom() {
    if (y > height+80) {
      return true;
    } else {
      return false;
    }
  }
}
