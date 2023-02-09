//Lucas Jackson | Nov 2022 | Calculator
Button[] numButtons = new Button[10];
Button[] opButtons = new Button [16];
String dVal = "0.0";
float l, r, result;
char op = ' ';
boolean left = true;

void setup() {
  size(400, 800);
  //numButtons
  numButtons[0] = new Button(105, 740, 170, 80, '0', color(46, 124, 173));
  numButtons[1] = new Button(60, 650, 80, 80, '1', color(46, 124, 173));
  numButtons[2] = new Button(150, 650, 80, 80, '2', color(46, 124, 173));
  numButtons[3] = new Button(240, 650, 80, 80, '3', color(46, 124, 173));
  numButtons[4] = new Button(60, 560, 80, 80, '4', color(46, 124, 173));
  numButtons[5] = new Button(150, 560, 80, 80, '5', color(46, 124, 173));
  numButtons[6] = new Button(240, 560, 80, 80, '6', color(46, 124, 173));
  numButtons[7] = new Button(60, 470, 80, 80, '7', color(46, 124, 173));
  numButtons[8] = new Button(150, 470, 80, 80, '8', color(46, 124, 173));
  numButtons[9] = new Button(240, 470, 80, 80, '9', color(46, 124, 173));
  //opButtons
  opButtons[0] = new Button(60, 380, 80, 80, 'C', color(153, 0, 0));
  opButtons[1] = new Button(150, 380, 80, 80, '±', color(153, 0, 0));
  opButtons[2] = new Button(240, 380, 80, 80, '%', color(153, 0, 0));
  opButtons[3] = new Button(330, 290, 80, 80, '÷', color(255, 170, 51));
  opButtons[4] = new Button(330, 380, 80, 80, 'x', color(255, 170, 51));
  opButtons[5] = new Button(330, 470, 80, 80, '-', color(255, 170, 51));
  opButtons[6] = new Button(330, 560, 80, 80, '+', color(255, 170, 51));
  opButtons[7] = new Button(330, 695, 80, 170, '=', color(255, 170, 51));
  opButtons[8] = new Button(240, 740, 80, 80, '.', color(46, 124, 173));
  opButtons[9] = new Button(60, 290, 80, 80, '√', color(153, 0, 0));
  opButtons[10] = new Button(150, 290, 80, 80, '²', color(153, 0, 0));
  opButtons[11] = new Button(240, 290, 80, 80, 'π', color(153, 0, 0)); //pi
  opButtons[12] = new Button(60, 200, 80, 80, 'c', color(153, 0, 0)); // cube root
  opButtons[13] = new Button(150, 200, 80, 80, '³', color(153, 0, 0));
  opButtons[14] = new Button(240, 200, 80, 80, 'S', color(153, 0, 0));
  opButtons[15] = new Button(330, 200, 80, 80, 's', color(153, 0, 0));
}

void draw() {
  background(125);
  updateDisplay();
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover(mouseX, mouseY);
  }
}

void keyPressed() {
  println("key:" + key);
  println("keyCode:" + keyCode);
  if (keyCode == 49 || keyCode == 97) {
    handleEvent("1", true);
  } else if (keyCode == 50 || keyCode == 98) {
    handleEvent("2", true);
  } else if (keyCode == 51 || keyCode == 99) {
    handleEvent("3", true);
  } else if (keyCode == 52 || keyCode == 100) {
    handleEvent("4", true);
  } else if (keyCode == 53 || keyCode == 101) {
    handleEvent("5", true);
  } else if (keyCode == 54 || keyCode == 102) {
    handleEvent("6", true);
  } else if (keyCode == 55 || keyCode == 103) {
    handleEvent("7", true);
  } else if (keyCode == 56 || keyCode == 104) {
    handleEvent("8", true);
  } else if (keyCode == 57 || keyCode == 105) {
    handleEvent("9", true);
  } else if (keyCode == 48 || keyCode == 96) {
    handleEvent("0", true);
  } else if (keyCode == 45 || keyCode == 109) {
    handleEvent("-", true);
  } 
  }
  void handleEvent(String val, boolean num) {
    if (num&& dVal.length() <24) {
      if (dVal.equals("0.0")) {
        dVal = val;
      } else {
        dVal  += val;
      }
      if (left) {
        l = float(dVal);
      } else {
        r = float(dVal);
      }
      if (left) {
        l = float(dVal);
      } else {
        r = float(dVal);
      }
    } else if (val.equals("C")) {
      dVal = "0.0";
      l = 0.0;
      r = 0.0;
      result = 0.0;
      left = true;
      op = ' ';
    } else if (val.equals("π")) {
      if (left) {
        l = PI;
        dVal = str(l);
      } else {
        r = PI;
        dVal = str(r);
      }
    } else if (val.equals("S")) {
      if (left) {
        l = sin(l);
        dVal = str(l);
      } else {
        r = sin(r);
        dVal = str(r);
      }
    } else if (val.equals("s")) {
      if (left) {
        l = cos(l);
        dVal = str(l);
      } else {
        r = cos(r);
        dVal = str(r);
      }
    }
  }

  void mouseReleased() {
    for (int i=0; i<numButtons.length; i++) {
      if (numButtons[i].on && dVal.length() <24) {
        handleEvent(str(numButtons[i].val), true);
      }
    }
    for (int i=0; i<opButtons.length; i++) {
      if (opButtons[i].on && opButtons[i].val == 'C') {
        handleEvent("C", false);
      } else if (opButtons[i].on && opButtons[i].val == '+') {
        op = opButtons[i].val;
        left = false;
        dVal = str(opButtons[i].val);
      } else if (opButtons[i].on && opButtons[i].val == '=') {
        performCalculation();
      } else if (opButtons[i].on && opButtons[i].val == '-') {
        op = opButtons[i].val;
        dVal = "-";
        left = false;
      } else if (opButtons[i].on && opButtons[i].val == 'x') {
        op = 'x';
        left = false;
        dVal = str(opButtons[i].val);
      } else if (opButtons[i].on && opButtons[i].val == '÷') {
        op = '÷';
        left = false;
        dVal = str(opButtons[i].val);
      } else if (opButtons[i].on && opButtons[i].val == '²') {
        result = l*l;
        performCalculation();
      } else if (opButtons[i].on && opButtons[i].val == '√') {
        result = sqrt(l);
        performCalculation();
      } else if (opButtons[i].on && opButtons[i].val == '³') {
        result = l*l*l;
        performCalculation();
      } else if (opButtons[i].on && opButtons[i].val == 'c') {
        if (left) {
          l = pow(l, -3); //math needs to be done
        } else {
          r = pow(r, -3); // math needs to be done
        }
        performCalculation();
      } else if (opButtons[i].on && opButtons[i].val == '%') {
        result = l / 100;
        performCalculation();
      } else if (opButtons[i].on && opButtons[i].val == '?') {
      } else if (opButtons[i].on && opButtons[i].val == '±') {
        if (left) {
          l = l * - 1;
          dVal = str(l);
        } else {
          r = r * -1;
          dVal = str(r);
        }
      } else if (opButtons[i].on && opButtons[i].val == 'π') {
        handleEvent("π", false);
      } else if (opButtons[i].on && opButtons[i].val == '.') {
        if (dVal.contains(".") == false) {
          dVal+= ".";
        }
      }
      println("L:" + l + "Op:" + op + "R:" + r + "Result:" + result + "Left:" + left);
    }
  }



  void updateDisplay() {
    rectMode(CENTER);
    rect(width/2, 80, width-20, 120, 50);
    fill(0);
    textAlign(CENTER);
    if (dVal.length() < 22) {
      textSize(30);
    } else if (dVal.length() < 10) {
      textSize(28);
    } else if (dVal.length() < 9) {
      textSize(24);
    } else if (dVal.length() < 8) {
      textSize(22);
    }
    text(dVal, width-195, 100);
  }

  void performCalculation() {
    if (op == '+') {
      result = l +r;
    } else if (op == '-') {
      result = l-r;
    } else if (op == 'x') {
      result = l * r;
    } else if (op == '÷') {
      result = l / r;
    }
    dVal = str(result);
    l = result;
    left = true;
  }
