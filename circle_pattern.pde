void circle(int x, int y) {
  pushMatrix();
  translate(x, y);
  strokeWeight(2);
  stroke(#334eac);
  noFill();
  circle(0, 0, 160);
  popMatrix();
}
