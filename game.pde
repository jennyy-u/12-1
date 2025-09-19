void game() {
  background(255);
  stroke(0);
  fill(0);
  rect(0, 0, width/2, height);


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
