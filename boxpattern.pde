//global variables


void setup() {
  size(800, 800);
  background(255);
  strokeWeight(3);
  stroke(#f4b840);
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
}



void squareIn(int x, int y) {
  pushMatrix();
  translate(x, y);
  rectMode(CENTER);
  square(0, 0, 50);
  popMatrix();
}

void square(int x, int y) {
  pushMatrix();
  translate(x, y);
  rectMode(CENTER);
  square(0, 0, 140);
  popMatrix();
}
