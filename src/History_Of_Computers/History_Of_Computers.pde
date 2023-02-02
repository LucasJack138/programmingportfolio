//Lucas Jackson | History of Computers | Sept 8 2022
int f=0;
void setup() {
  size(900, 400);
  background(255);
  
}

void draw() {
  background(255);
  
  // Render/Make Title
  fill(0);
  textAlign(CENTER);
  textSize(40);
  text("Computer History Timeline", width/2, 40);
  textSize(22);
  colorMode(HSB);
  if(f >= 255) {f = 0;} else {f++;}
  fill(f+100,254,254);
  text("By: Lucas Jackson", width/2, 80);
  colorMode(RGB);
  fill(254);

  //Render/Make Timeline
  strokeWeight(3);
  line(100, 200, 800, 200);
  textSize(20);
  colorMode(HSB);
  if(f >= 255) {f = 0;} else {f++;}
  fill(f+100,254,254);
  text("1935", 75, 205);
  text("1960",825, 205);
  colorMode(RGB);
  fill(256);
  // Render/Make Timeline Items
  fill(f+100,254,254);
  stroke(f+100,254,254);
  histEvent(150,150,"Colossus computer - 1943","Created by tommy flowers \n designed to solve a problem posed by a mathematician", true);
  histEvent(350,150,"ENIAC - 1945","First programmable, electronic, general-purpose digital computer, \n created by John Mauchly and J. presper eckert", true);  
  histEvent(550,150,"EDSAC - 1947","created by Maurice Wilkes \n intending to develop a commercially applied computer and succeeding in Lyons development of LEO", true);
  histEvent(750,150,"Manchester Mark 1 - 1947","Made by a team of 4 it allowed researchers to gain experience in the practical use of computers \n pioneering inclusion of index registers", true);
  histEvent(175,250,"Z2 - 1940","completed by Zuse in his parents home in 1940 the computer weighed more than 600lbs", false);
  histEvent(375,250,"Ferranti mark 1 - 1951","Produced by british electrical engineering firm \n it is the tidied up and commercialized version of the manchester mark 1", false);
  histEvent(575,250,"AGC - 1966","Created by charles stark draper laboratory \n provided computation and electronic interfaces for guidance, navigation, and control of the spacecraft.", false);
  histEvent(775,250,"Analog computer - 1950","It uses the continuous variation aspect of physical phenomena such as electrical, mechanical, or hydraulic, \n and it was created by mihailo petrovic alas", false);

}

void histEvent(int x, int y,String title, String detail, boolean top) {
  if(top == true) {
      line(x,y, x+15, y+50);
  } else {
      line(x,y, x+15, y-50);

  }
  rectMode(CENTER);
  fill(66);
  rect(x,y,200,25,7);
  fill(244);
  textSize(18);
  text(title,x,y+5);
  if(mouseX > x-75 && mouseX < x+75 && mouseY > y-15 && mouseY < y+15) {
    fill(0);
    text(detail,width/2,350);
  }
}
