//jenny yu
//block 1-4
//september 11, 2025

//global variables
color pink = #f9cdd5;
color matcha = #a6bc7c;
color forest = #2a4421;

boolean indent;


void setup() {
  size(800, 800);
  background(255);
  indent = true;

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
}

void block(int x, int y) {
  pushMatrix();
  translate(x, y);

  pink(100, 0);
  matcha(100, 0);
  forest(100, 0);
  popMatrix();
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
