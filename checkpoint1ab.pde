//jenny yu
//block 1-4
//september 4, 2025


//colour palette
color sky = #bad6eb;
color grass = #a8bf8a;
color red = #e06458;
color lemon = #ffe497;
color darkYellow = #fccd86;
color sun = #f4b840;
color moon = #d7d7d5;
color nightSky = #1c2b38;

//animation variables
float sunY;
float moonY;
boolean day;

/*
 if (day == true) {
 fill();
 circle();
 }
 
 if (day == false) {
 fill
 }
 if else
 */

void setup() {
  size(800, 800);
  background(sky);
  sunY = 150;
  moonY = 150;
  day = true;
}



void draw() {

  //sun moon animation
  if (sunY < 1000) {
    day = !day;
  }

  //sun
  if (day == true) {
    background(sky);
    stroke(sun);
    fill(sun);
    circle(120, sunY, 130);

    sunY = sunY + 2; //assign the variable sunY so it - every frame (60 frames/second)
    if (sunY > height) {
      day = false;
    }
  }

  if (day == false) {
    background(nightSky);
    stroke(moon);
    fill(moon);
    circle(120, moonY, 130);

    moonY = moonY -2;
    if (moonY < -200) {
      day = true;
    }
  }


  //grass
  stroke(grass);
  fill(grass);
  rect(0, 640, width, 160);

  //house

  pushMatrix();
  translate(0, -70);

  //main body
  strokeWeight(4);
  stroke(darkYellow);
  fill(lemon);
  rect(150, 450, 500, 350);


  //chimney
  rect(220, 235, 100, 40);
  rect(230, 275, 80, 25);


  //roof
  stroke(red);
  fill(red);
  quad(80, 450, 150, 300, 650, 300, 600, 450);
  triangle(600, 450, 652, 304, 720, 450);


  //door(knob)
  stroke(darkYellow);
  rect(330, 600, 140, 200);

  fill(darkYellow);
  circle(450, 700, 15);


  //windows
  stroke(lemon);
  fill(red);
  rect(180, 630, 120, 100);
  line(180, 680, 300, 680);
  line(240, 630, 240, 730);

  rect(500, 630, 120, 100);
  line(500, 680, 620, 680);
  line(560, 630, 560, 730);
  popMatrix();
}
