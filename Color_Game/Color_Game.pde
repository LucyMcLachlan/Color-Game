//Lucy McLachlan
//Color game

color purple = #8D2BCB, red = #980F0F, green=#27622D, blue=#25427E, orange=#C66912, teal=#12C692, yellow=#EAEA53, pink=#EA53AC;

//score vars
int score;
int highScore;
// timer
int timer;
//font var
PFont sketch;

//gif var
PImage[] paint;
int frames = 4;
int f;

//mode framework vars
int mode;

final int INTRO = 1;
final int GAME = 2;
final int OVER = 3;

//arrays
String[] words;
color[] colors;

int w, c, r;

void setup() {
  mode = INTRO;
  size(800, 600);

  score=0;
  highScore=0;
  sketch = createFont("Sketch 3D.otf", 1);

  // arrays
  words = new String[8];
  colors = new color[8];

  words[0]="Red";
  colors[0]=red;

  words[1]="Purple";
  colors[1]=purple;

  words[2]="Green";
  colors[2]=green;

  words[3]="Blue";
  colors[3]=blue;

  words[4]="Orange";
  colors[4]=orange;

  words[5]="Teal";
  colors[5]=teal;

  words[6]="Yellow";
  colors[6]=yellow;

  words[7]="Pink";
  colors[7]=pink;
  
  timer=0;
}

void draw() {
  if (mode == INTRO)intro();
  else if (mode == GAME)game();
  else if (mode == OVER)over();
  else println("mode error=" + mode);
}
