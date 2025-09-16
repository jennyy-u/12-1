
color lightBlue = #7096d1;
color darkBlue = #334eac;
boolean indentC;

void setup() {
  size(800, 800);
  background(255);
  indentC = true;

  pushMatrix();
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




void circle(int x, int y) {
  pushMatrix();
  translate(x, y);
  strokeWeight(2);
  noFill();
  circle(0, 0, 160);
  popMatrix();
}
