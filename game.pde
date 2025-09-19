void game() {
  background(255);
  stroke(0);
  fill(0);
  rect(0, 0, width/2, height);
  
  //tactile match? button
  tactileMatch(0, 0, width/2, height);
  tactileMatch(4000, 0, width, height);
  
  
  //random
  textFont(bubblegum);
  textSize(100);
  fill(colors[randomColor]);
  text(words[randomWord], 400, 400);
  
  
  //text
  textFont(bubblegum);
  textSize(70);
  textAlign(CENTER, CENTER);
  fill(255);
  text("don't", 200, 180);
  text("match", 200, 250);  
  fill(0);
  text("match", 600, 210);
}


void tactileMatch(int x, int y, int w, int h) {
  if (mouseX > 0 && mouseX < width/2 && mouseY > 0 && mouseY < height) {
    stroke(lightPink);
  } if (mouseX > width/2 && mouseX < width && mouseY > 0 && mouseY < height) {
    
    
  }
}
