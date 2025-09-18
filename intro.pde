void intro() {
  background(lightPink);


  //play button
  tactileIntro(300, 650, 200, 70);
  strokeWeight(5);
  fill(darkPink);
  rect(300, 650, 200, 70);

  textSize(40);
  textAlign(CENTER, CENTER);
  fill(red);
  text("PLAY", 400, 677);


  //gif
  image(gif[f], 0, 150, width, 450);
  println(frameCount);
  if (frameCount % 3 == 0) f = f + 1;
  if (f == numOfFrames) f = 0;
}


void tactileIntro(int x, int y, int w, int h) {
  if (mouseX > 300 && mouseX < 500 && mouseY > 650 && mouseY < 720) {
    stroke(lightPink);
  } else {
    stroke(red);
  }
}
