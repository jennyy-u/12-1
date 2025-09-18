import processing.javafx.*;

//jenny yu
//block 1-4
//september


//global variables
color lightPink = #f597ba;
color darkPink = #ee4d64;
color red = #de0001;



int randomNum = (int) random (0, 10); //generating random integer **from 0-9 (no decimal)


//mode framework
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

//gif variables
PImage[] gif;
int numOfFrames;
int f;


void setup() {
  size(800, 800, FX2D);
  background(255);


  mode = INTRO;

  //gif setup
  numOfFrames = 48;
  gif = new PImage[numOfFrames];

  int gF = 0;
  while (gF < numOfFrames) {
    gif[gF] = loadImage("frame_" + gF + "_delay-0.03s.gif");
    gF++;
  }
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  }
}


void mouseReleased() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 650 && mouseY < 720) {
    mode = 1;
  }
  
  
}
