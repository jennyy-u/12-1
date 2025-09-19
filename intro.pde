void intro() {
  background(lightPink);


  //gif
  image(gif[f], 0, 150, width, 450);
  println(frameCount);
  if (frameCount % 3 == 0) f = f + 1;
  if (f == numOfFrames) f = 0;


  //game title
  textFont(cheriClear);
  textSize(80);
  textAlign(CENTER, CENTER);
  stroke(red);
  text("COLOUR GAME", 400, 80);


  //play button
  tactileIntro(300, 630, 200, 70);
  strokeWeight(5);
  fill(darkPink);
  rect(300, 630, 200, 70);
  
  textFont(toffee);
  textSize(50);
  fill(red);
  text("play", 400, 657);
}


void tactileIntro(int x, int y, int w, int h) {
  if (mouseX > 300 && mouseX < 500 && mouseY > 630 && mouseY < 700) {
    stroke(lightPink);
  } else {
    stroke(red);
  }
}
