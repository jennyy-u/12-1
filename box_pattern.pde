void square(int x, int y) {
  pushMatrix();
  translate(x, y);
  rectMode(CENTER);
  square(0, 0, 140);
  popMatrix();
}


void squareIn(int x, int y) {
  
  pushMatrix();
  translate(x, y);
  rectMode(CENTER);
  square(0, 0, 50);
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
