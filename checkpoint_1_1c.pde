//jenny yu
//block 1-4
//september 10, 2025

//colour palette
color red = #c1121f;
color navy = #003049;
color beige = #fbf0d8;
color sky = #d1e8ff;

void setup() {
  size(800, 800);
  background(sky);
  boat(500, 500, 1);
}

void boat(float x, float y, float s) {
  translate(x, y);
  scale(s);
  strokeWeight(3);
  stroke(0);

  //base
  fill(red);
  quad(-230, 40, -170, 170, 170, 170, 230, 40);

  fill(navy);
  quad(-250, 0, -230, 40, 230, 40, 250, 0);

  //pole
  strokeWeight(5);
  line(0, -300, 0, 0);
  strokeWeight(3);
  fill(beige);
  triangle(0, -300, 120, -30, 0, -30);
}
