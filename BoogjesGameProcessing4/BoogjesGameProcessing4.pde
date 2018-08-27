int stage;

PImage startscreen;
PImage busyscreen;
PImage gameoverscreen;


void setup() { 
  size(1780, 1000);
  stage = 1;
  startscreen = loadImage("startscreen.jpg");
    startscreen.resize(1780,1000);
    
  busyscreen = loadImage("busyscreen.png");
    busyscreen.resize(1780,1000);
  
   gameoverscreen = loadImage("gameoverscreen.png");
    gameoverscreen.resize(1780,1000); 
    
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
 
  xpos = width/2;
  ypos = height/2;
  
  clear();
}

void draw() {  
  if(stage == 1){
  background(startscreen);
  textAlign(CENTER);
  textSize(37);
  text("GAME:", 890, 250);
  text("Dodge ball with mouse and keep your mouse clicked to get the highest score possible,", 890, 300);
  text("if you hit the ball you lose!",890,350);
  text("Press any key to start game", 890, 400);
  fill(0);
  
  
  if(keyPressed == true){
  stage = 2;
  }
 }
  if(stage == 2){
    background(busyscreen);
    makearc();
    mouse();
    keypressed();
    ball();
    if(xpos == mouseX || ypos == mouseY){
      stage = 3;
    }
  }
    
  
 if(stage == 3){
   background(gameoverscreen);  
   text(value, 890, 500);
   text("Press any key to start game", 890, 450);
   if(keyPressed == true){
   setup();
   }
 }
}
