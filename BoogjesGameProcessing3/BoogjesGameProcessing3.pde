GameMode gameMode = GameMode.StartScreen;
enum GameMode { StartScreen, GameOver};

float value = 0;
float x = 57.3;

boolean gameOver;

PImage startscreen;
PImage startbutton;
PImage busyscreen;
PImage gameoverscreen;
PImage gameoverbutton;

void setup() {  
  //Standards
  size(1780, 1000);
  smooth();
  strokeWeight(3);
  
  //Screens
  startscreen = loadImage("startscreen.jpg");
    startscreen.resize(1780,1000);
  busyscreen = loadImage("busyscreen.png");
   busyscreen.resize(1780,1000);
   //Buttons
   

}

void draw() {  
  
  background(busyscreen);
  
 
  //Vorm: arc(x, y, width, height, start, stop); 
   arc(890, 500, 680, 680, 0, value); //Drawed an arc
   fill(220,220,220);
   stroke(255);
   mouse();
   keyPresed();

}
