//jenny yu
//block 1-4
//september 11, 2025

//colour
color pink = #f9cdd5;
color matcha = #a6bc7c;
color forest = #2a4421;


void setup() {
  size(800, 800);
  background(255);

  pink(100, 150);
  pink(100, 450);

  green(400, 150);
}



void pink(int x, int y) {
  pushMatrix();
  translate(x, y);
  stroke(pink);
  fill(pink);

  quad(-100, -50, -100, 0, 0, 50, 0, 0);
  quad(-40, 30, -40, 100, 0, 120, 0, 50);
  popMatrix();
}

void green(int x, int y) {
  pushMatrix();
  translate(x, y);
  rotate(-PI/2);
  stroke(matcha);
  fill(matcha);

  quad(-100, -50, -100, 0, 0, 50, 0, 0);
  quad(-40, 30, -40, 100, 0, 120, 0, 50);

  popMatrix();
}
