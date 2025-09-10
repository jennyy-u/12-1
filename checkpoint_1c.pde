//jenny yu
//block 1-4
//september 8, 2025

//colour palette
color red = #c1121f;
color navy = #003049;
color beige = #fbf0d8;
color grey = #f0f0f0;
color sky = #d1e8ff;

void setup() {
  size(800, 800);
  background(sky);
  boat();
  noStroke();
  fill(102, 155, 188, 100);
  rect(0, 600, width, 200);
}



void boat() {
  //base
  strokeWeight(3);
  stroke(0);
  fill(red);
  quad(170, 540, 230, 670, 570, 670, 630, 540);

  fill(navy);
  quad(150, 500, 170, 540, 630, 540, 650, 500);

  fill(beige);
  quad(130, 460, 340, 460, 360, 500, 150, 500);

  //base window
  pushMatrix();
  int cl = 250;
  while (cl >= 250 && cl <= 550) {
    strokeWeight(3);
    fill(grey);
    circle(cl, 580, 30);
    strokeWeight(2);
    circle(cl, 580, 20);
    cl = cl + 60;
  }
  popMatrix();


  //top
  stroke(0);
  fill(beige);
  rect(400, 400, 200, 100);

  //top window
  fill(grey);
  rect(425, 425, 150, 30);

  pushMatrix();
  int ln = 425;
  while (ln >= 425 && ln <= 575) {
    line(ln, 425, ln, 455);
    ln = ln + 25;
  }
  popMatrix();




  //ontop
  quad(485, 400, 490, 330, 510, 330, 515, 400);


  //horizontal bars
  pushMatrix();
  float hzlX = 490;
  int hzlY = 330;
  int ll = 20;
  while (hzlX >= 485 && hzlX <= 515 && hzlY >= 330 && hzlY <= 400) {
    line(hzlX, hzlY, hzlX + ll, hzlY);
    ll = ll + 1;
    hzlX = hzlX - 0.5;
    hzlY = hzlY + 12;
  }
  popMatrix();

  //vertical
  line(500, 300, 500, 330);
  line(495, 305, 505, 305);
  line(495, 311, 505, 311);

  //horizontal
  line(470, 330, 530, 330);
  pushMatrix();
  int svl = 470;
  while (svl >=470 && svl <= 530) {
    line(svl, 325, svl, 335);
    svl = svl + 10;
  }
  popMatrix();
}
