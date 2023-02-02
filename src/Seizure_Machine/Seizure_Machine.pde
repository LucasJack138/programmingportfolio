// Liam Scott, Lucas Jackson, and David Borja | sept 8 2022

int f=0;
boolean play;
float time = 0;

void setup() {
size(displayWidth, displayHeight);
frameRate(60);
}

void draw() {
stroke(random(256), random(256), random(256));
strokeWeight(random(256));
time += 1/60;
background(random(256), random(256), random(256));
rectMode(CENTER);
for (int e = 0; e < 100; e++) {
zoog(int(random(width)), int(random(height)));
}
text("This is the seizure machine", random(width), random(height));
textSize(random(35));
colorMode(HSB);
if (f>=256) {
f = 0;
} else {
f+=50;
}
fill(f, 256, 256);
text("This is the seizure machine", random(height), random(width));
colorMode(RGB);
fill(256);

// Start Screen
if (!play) {
startScreen();
}
if (play) {
  endScreen();
}
}


void zoog(float x, float y) {
// Draw Zoog's body
stroke(random(255), random(255), random(255));
noStroke();
fill(random(255), random(255), random(255));
rect(x, y, 20, 100);

// Draw Zoog's head
stroke(random(255), random(255), random(255));
noStroke();
fill(random(255), random(255), random(255));
ellipse(x, y - 30, 60, 60);

// Draw Zoog's eyes
fill(random(256), random(256), random(256));
noStroke();
ellipse(x - 18, y - 30, 16, 32);
fill(random(256), random(256), random(256));
noStroke();
ellipse(x + 18, y - 30, 16, 32);

// Draw Zoog's legs
stroke(random(255), random(255), random(255));
line(x - 10, y + 50, x - 20, y + 60);
line(x + 10, y + 50, x + 20, y + 60);
}

void startScreen() {
background(0);
textAlign(CENTER);
textSize(40);
fill(255);
text("Welcome to the Seizure Machine", width/2, height/2);
text("Do you really want to play this game?", width/2, height/2+30);
text("Ok, if you want to play this game\nPress Spacebar", width/2, height/2+60);
}
void keyPressed() {
  if(keyCode == ' ') {
    play = true;
  }
}

void endScreen() {
background(0);
textAlign(CENTER);
textSize(40);
fill(255);
text("I hope you liked the Seizure Machine!\nCome back again", width/2, height/2);
if (keyCode == ' ') {
  play = true;
}
}
