//jenny yu
//block 1-4
//september 11, 2025

//global variables
color pink = #f9cdd5;
color matcha = #a6bc7c;
color forest = #2a4421;
color lightBlue = #7096d1;
color darkBlue = #334eac;
color yellow = #f4b840;

boolean indent, indentC;

//mode framework
int mode;
final int PATTERN1  = 0;
final int PATTERN2 = 1;
final int PATTERN3 = 2;

void setup() {
  size(800, 800);
  background(255);
  indent = true;
  indentC = true;


  mode = PATTERN1;
}

void draw() {
  indent = true;
  if (mode == PATTERN1) {
    pushMatrix();
    int r =  -35;
    int c = -1;
    while (r < width && c < height) {
      block(r, c);
      r = r + 140;
      if (r > width) {
        c = c + 100;
        indent = !indent;
        if (indent == true) {
          r = -35;
        }
        if (indent == false) {
          r = -105;
        }
      }
    }
    popMatrix();
  } else if (mode == PATTERN2) {
    pushMatrix();
    background(255);
    strokeWeight(3);
    stroke(yellow);
    int lX = 160;
    while (lX < width) {
      line(lX, 0, lX, width);
      lX = lX + 160;
    }
    int lY = 160;
    while (lY < height) {
      line(0, lY, width, lY);
      lY = lY + 160;
    }

    int sX = 0;
    int sY = 0;
    while (sY < 1000) {
      noFill();
      square(sX, sY);
      fill(255);
      squareIn(sX, sY);
      sX = sX + 160;
      if (sX > 1000) {
        sX = 0;
        sY = sY + 160;
      }
    }
    popMatrix();
  } else if (mode == PATTERN3) {
    indentC = true;
    pushMatrix();
    background(255);
    int cX = 80;
    int cY = 0;
    while (cX < 960 && cY < 1000) {
      circle(cX, cY);
      cX = cX + 160;
      if (cX > width) {
        cY = cY + 80;
        indentC = !indentC;
        if (indentC == true) {
          stroke(lightBlue);
          cX = 80;
        }
        if (indentC == false) {
          stroke(darkBlue);
          cX = 0;
        }
      }
    }
    popMatrix();
  }
}



//------------------------------------------------------------------------------------
void block(int x, int y) {
  pushMatrix();
  translate(x, y);

  pink(100, 0);
  matcha(100, 0);
  forest(100, 0);
  popMatrix();


  //next button
  strokeWeight(3);
  fill(255);
  circle(720, 400, 80);
  textSize(20);
  textAlign(CENTER, CENTER);
  fill(0);
  text("next", 720, 400);

  //back button
  fill(255);
  circle(80, 400, 80);
  fill(0);
  text("back", 80, 400);
}

void pink(int x, int y) {
  pushMatrix();
  translate(x, y);
  strokeWeight(1);
  stroke(pink);
  fill(pink);

  quad(0, 0, 0, 70, -70, 40, -70, -30);

  popMatrix();
}

void matcha(int x, int y) {
  pushMatrix();
  translate(x, y);
  strokeWeight(1);
  stroke(matcha);
  fill(matcha);

  quad(0, 0, 0, 70, 70, 40, 70, -30);

  popMatrix();
}

void forest(int x, int y) {
  pushMatrix();
  translate(x, y);
  strokeWeight(1);
  stroke(forest);
  fill(forest);

  quad(0, 0, 70, -30, 0, -60, -70, -30);

  popMatrix();
}



//------------------------------------------------------------------------------------
void mouseReleased() {
  if (mouseX > 680 && mouseX < 760 && mouseY > 360 && mouseY < 440) {
    mode = mode + 1;
  }
  if (mode > 2) {
    mode = 0;
  }

  if (mouseX > 40 && mouseX < 120 && mouseY > 360 && mouseY < 440) {
    mode = mode - 1;
  }
  if (mode < 0) {
    mode = 2;
  }
}
