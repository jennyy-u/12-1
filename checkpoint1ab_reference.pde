//jenny yu
//programming 12 block 1-4
//checkpoint 1ab

//colour palette
color grass = #a8bf8a;
color sun = #fae57c;
color moon = #edf3f6;
color sky = #bad6eb;
color nightSky = #38506a;
color red = #e06458;
color lemon = #ffe497;
color darkYellow = #fccd86;

//animation variables
float sunX, sunY, moonX, moonY;
boolean day;



void setup() {
  size(800, 800);
  background(sky);
  sunX = -200;
  sunY = 700;
  moonX = -200;
  moonY = 700;
  day = true;
}



void draw() {

  //day night animation
  if (day == true) {
    background(sky);
    stroke(sun);
    fill(sun);
    circle(sunX, sunY, 130);

    sunX = sunX + 2;
    if (sunX < 300) {
      sunY = sunY - 2;
    }
    if (sunX > 300 && sunX < 400) {
      sunY = sunY - 1;
    }
    if (sunX > 400 && sunX < 500) {
      sunY = sunY + 1;
    }
    if (sunX > 500) {
      sunY = sunY + 2;
    }

    if (sunX > 1000) {
      day = false;
      moonX = -200;
    }
  }

  if (day == false) {
    background(nightSky);
    stroke(moon);
    fill(moon);
    circle(moonX, moonY, 130);
    stroke(nightSky);
    fill(nightSky);
    circle(moonX + 30, moonY, 130);

    moonX = moonX + 2;
    if (moonX < 300) {
      moonY = moonY - 2;
    }
    if (moonX > 300 && moonX < 400) {
      moonY = moonY - 1;
    }
    if (moonX > 400 && moonX < 500) {
      moonY = moonY + 1;
    }
    if (moonX > 500) {
      moonY = moonY + 2;
    }
    if (moonX > 1000) {
      day = true;
      sunX = -200;
    }
  }


  //grass
  stroke(grass);
  fill(grass);
  rect(0, 600, width, 200);


  //house
  pushMatrix();
  translate(40, 20);
  scale(0.9);

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
  circle(400, 600, 140);
  rect(330, 600, 140, 200);

  //door details
  line(350, 555, 400, 600);
  line(400, 530, 400, 600);
  line(450, 555, 400, 600);


  //door knob
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
