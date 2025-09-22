void gameover() {
  background(lightPink);


  //text
  textFont(cheriClear);
  textSize(80);
  textAlign(CENTER, CENTER);
  fill(255);
  text("GAMEOVER", 400, 270);

  textFont(cheri);
  textSize(50);
  text("score: ", 370, 370);
  text (score, 480, 370);

  //back to intro button
  tactileReturnIntro(300, 630, 200, 70);
  strokeWeight(5);
  fill(darkPink);
  rect(300, 630, 200, 70);


  textFont(toffee);
  textSize(50);
  fill(red);
  text("play again", 400, 657);
}


void tactileReturnIntro(int x, int y, int w, int h) {
  if (mouseX > 300 && mouseX < 500 && mouseY > 630 && mouseY < 700) {
    stroke(lightPink);
  } else {
    stroke(red);
  }
}
