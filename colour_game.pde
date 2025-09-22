import processing.javafx.*;

//jenny yu
//block 1-4
//september 18, 2025


//colour variables
color lightPink = #f597ba;
color darkPink = #ee4d64;
color red = #de0001;
color orange = #f18e11;
color yellow = #f9f349;
color green = #a0fa56;
color blue = #88cdfa;
color purple = #ec1df2;
color pink = #e87799;

//font variables
PFont cheri;
PFont cheriClear;
PFont toffee;
PFont bubblegum;

//score
int score;


//random puzzle
int randomWord = (int) random (0, 7); //generating random integer from 0-6 (no decimal)
int randomColor = (int) random (0, 7);

String[] words = {"RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "PURPLE", "PINK"};
color[] colors = {red, orange, yellow, green, blue, purple, pink};


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

  mode = GAME;

  score = 0;

  //font
  cheri = createFont("CHERI___.TTF", 50);
  cheriClear = createFont("CHERL___.TTF", 80);
  toffee = createFont("Sweet Toffee.ttf", 40);
  bubblegum = createFont ("Bubblegum.ttf", 60);

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
  if (mouseX > 300 && mouseX < 500 && mouseY > 630 && mouseY < 700 && mode == INTRO) {
    mode = 1;
    score = 0;
  } else if (mouseX > 300 && mouseX < 500 && mouseY > 630 && mouseY < 700 && mode == GAMEOVER) {
    mode = 0;
  } else if (mouseX > 0 && mouseX < width/2 && mouseY > 0 && mouseY < height && mode == GAME) {
    if (randomColor == randomWord) {
      mode = 2;
    } else if (randomColor != randomWord) {
      score = score + 1;
      randomWord = (int) random (0, 7);
      randomColor = (int) random (0, 7);
    }
  } else if (mouseX > width/2 && mouseX < width && mouseY > 0 && mouseY < height && mode == GAME) {
    if (randomColor == randomWord) {
      score = score + 1;
      randomWord = (int) random (0, 7);
      randomColor = (int) random (0, 7);
    } else if (randomColor != randomWord) {
      mode = 2;
    }
  }
}
