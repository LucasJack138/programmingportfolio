class Ship {
  int x, y, w, ammo, turretCount, health;
  PImage ship;

  // Constructor
  Ship() {
    x = 0;
    y = 0;
    w = 90;
    ammo = 450;
    health = 1000;
    turretCount = 3;
    ship = loadImage("Ship.png");
  }

  void display() {
    ship.resize(100, 100);
    imageMode(CENTER);
    image(ship, x, y);
  }

  void move(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }

  boolean fire() {
    if (ammo > 0) {
      ammo--;
      return true;
    } else {
      return false;
    }
  }

  boolean intersect(Rock rock) {
    float d = dist(x, y, rock.x, rock.y);
    if(d < 62) {
      return true;
    } else {
      return false;
    }
  }
}
