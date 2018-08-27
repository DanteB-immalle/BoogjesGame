float value = 0;
float x = 57.3;

int rad = 60;        // Width of the shape
float xpos, ypos;    // Starting position of shape    

float xspeed = 10;  // Speed of the shape
float yspeed = 10;  // Speed of the shape

int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom


void makearc(){
//Vorm: arc(x, y, width, height, start, stop); 
   arc(890, 500, 340, 340, 0, value); //Drawed an arc
   fill(220,220,220);
   stroke(255);
}
//Ik kies 2 keer voor een variable versie omdat ik wil dat dit meerdere keren kan uitgevoerd worden 
void mouse(){
if (mousePressed == true) { //Continuently add 1° to the arc if mouse is pressed
      value = value + PI/180;  
      println(nf(value * x, 0, 1)); //Used nf so the numbers are rounded up
      
 }
}
void keypressed(){
 if (keyPressed) { //If 'a' is pressed it resets the background and resets the value
     if(key == 'a') {
       value = 0;
       setup();   
  }
 }
}

void ball(){ //Create a ball that bounces of the wall+
 xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }


  ellipse(xpos, ypos, rad, rad);
}
  
