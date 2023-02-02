// Lucas Jackson | Nov 29 2022 | SpaceGame
Ship s1;
ArrayList<Rock> rocks = new ArrayList<Rock>();
ArrayList<PowerUp> powerups = new ArrayList<PowerUp>();
ArrayList<Laser> lasers = new ArrayList<Laser>();
Rock[] r1 = new Rock[10];
Timer rockTimer, puTimer;
Star[] stars = new Star[2000];
int score, level;
boolean play;
int f=0;


void setup() {
  size(900, 900);
  s1 = new Ship();
  rockTimer = new Timer(800);
  rockTimer.start();
  puTimer = new Timer(5000);
  puTimer. start();
  for (int i =0; i<r1.length; i++) {
  }
  for (int i =0; i<stars.length; i++) {
    stars[i] = new Star();
  }
  score = 0;
  level = 1;
  play = false;
  rockTimer.start();
}

void draw() {
  if (!play) {
    startScreen();
  } else {
    background(0);
    noCursor();

    // Rendering of the stars
    for (int i =0; i<stars.length; i++) {
      stars[i].display();
      stars[i].move();
    }

    //Addomg PowerUps
    if (puTimer.isFinished()) {
      powerups.add(new PowerUp());
      puTimer.start();
    }

    //render PowerUps
    for (int i = 0; i < powerups.size(); i++) {
      PowerUp pu = powerups.get(i);
      if (pu.intersect(s1)) {
        if (pu.type == 'H') {
          s1.health+=100;
        } else if (pu.type == 'A') {
          s1.ammo+=100;
        } else if (pu.type == 'T') {
          s1.turretCount++;
        }
        powerups.remove(pu);
      }
      if (pu.reachedBottom()) {
        powerups.remove(pu);
      } else {
        pu.display();
        pu.move();
        println(powerups.size());
      }
    }

    // Adding rocks
    if (rockTimer.isFinished()) {
      rocks.add(new Rock());
      rockTimer.start();
    }
    for (int i = 0; i < rocks.size(); i++) {
      Rock r = rocks.get(i);
      if (s1.intersect(r)) {
        s1.health -=r.diam;
        score += r.diam;
      }
    }
    //render Rocks
    for (int i = 0; i < rocks.size(); i++) {
      Rock r = rocks.get(i);
      if (r.reachedBottom()) {
        rocks.remove(r);
      } else {
        r.display();
        r.move();
        println(rocks.size());
      }
    }
    //rendering the ship
    s1.display();
    s1.move(mouseX, mouseY);
    //for (int i =0; i<r1.length; i++) {
    //}

    // Render Laser
    for (int i = lasers.size()-1; i >= 0; i--) {
      Laser l = lasers.get(i);
      for (int j = 0; j < rocks.size(); j++) {
        Rock r = rocks.get(j);
        if (l.intersect(r)) {
          score+=100;
          ////Level increase
          //if(score%1000 == 0) {
          //  level+=1;
          //  s1.ammo +=100;
          //}
          rocks.remove(r);
          lasers.remove(l);
          //todo call the explosion animation
          // add a sound of explosion
        }
      }
      if (l.reachedTop()) {
        lasers.remove(l);
      } else {
        l.display();
        l.move();
      }
    }
    infoPanel();
    if (!play) {
      startScreen();
    }
  }
}
void mousePressed() {
  //laser.play();
  if (s1.fire() && s1.turretCount == 1) {
    lasers.add(new Laser(s1.x, s1.y));
    println(lasers.size());
  } else if (s1.fire() && s1.turretCount == 2) {
    lasers.add(new Laser(s1.x-30, s1.y));
    lasers.add(new Laser(s1.x+30, s1.y));
    println(lasers.size());
  } else if (s1.fire() && s1.turretCount == 3) {
    lasers.add(new Laser(s1.x, s1.y-30));
    lasers.add(new Laser(s1.x-25, s1.y-15));
    lasers.add(new Laser(s1.x+25, s1.y-15));
    println(lasers.size());
  }
}

void infoPanel() {
  fill(128, 128);
  rectMode(CENTER);
  rect(width/2, 25, width, 50);
  fill(255);
  textSize(35);
  textAlign(CENTER);
  text("Score: " + score +
    " | Level: " + level +
    " | Ammo: " + s1.ammo +
    " | Health: " + s1.health, width/2, 40);
}
void startScreen() {
  background(0);
  textAlign(CENTER);
  textSize(40);
  fill(255);
  text("Welcome to Space Game", width/2, height/2);
  text("Enjoy the game!", width/2, height/2+35);
  text("If you want to play this game\nPress Spacebar", width/2, height/2+70);
  textSize(30);
  colorMode(HSB);
  if (f >= 255) {
    f = 0;
  } else {
    f++;
  }
  fill(f+100, 254, 254);
  text("By: Lucas Jackson", width/2, 80);
  colorMode(RGB);
  if (keyPressed) {
    play = true;
  }
}

void gameOver() {
  background(0);
}
