//jenny yu
//programming 12 block 1-4
//checkpoint 1ab

//colour palette
color grass = #a8bf8a;
color sun = #fae57c;
color moon = #edf3f6;
color sky = #bad6eb;
color nightSky = #38506a;

//animation variables
float sunX, sunY;
float moonX, moonY;
boolean dayNight;



void setup() {
  size(800, 800);
  background(sky);
  sunX = -200;
  sunY = 700;
  moonX = -200;
  moonY = 700;
  dayNight = true;
}



void draw() {

  //sun and moon animation
  if (sunX > 1000 || moonX > 1000) {
    dayNight = !dayNight;
  }
  
  

  //sun and moon
  if (dayNight == true) {
    background(sky);
    stroke(sun);
    fill(sun);
    circle(sunX, sunY, 130);
    
    sunX = sunX + 2;
    sunY = sunY - 2;
    
    if (sunY <= 200) {
      sunY = sunY + 2;
    }
    
    if (sunX > 800) {
      dayNight = false;
    }
  }

  if (dayNight == false) {
    background(nightSky);
    stroke(moon);
    fill(moon);
    circle(moonX, moonY, 130);
    stroke(nightSky);
    fill(nightSky);
    circle(moonX + 30, moonY, 130);
    
    moonX = moonX + 2;
    moonY = moonY - 2;
    
    if (moonY <= 200) {
      moonY = moonY + 2;
    }
    
    if (moonX > 800) {
      dayNight = true;
    }
  }
  
  
  
  
  //grass
  stroke(grass);
  fill(grass);
  rect(0, 600, width, 200);
}
