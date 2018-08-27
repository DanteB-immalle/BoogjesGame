float value = 0;
float x = 57.3;
void setup() {  //Simple Void Setup
  size(640,320);
  background(255,0,0);
  smooth();
  strokeWeight(3);  
}

void draw() {  
  //Vorm: arc(x, y, width, height, start, stop);
  
   arc(320, 160, 250, 250, 0, value); //Drawed an arc
   
   if (mousePressed == true) { //Continuently add 1° to the arc if mouse is pressed
      value = value + PI/180;  
      println(nf(value * x, 0, 1)); //Used nf so the numbers are rounded up
   } 
   if (keyPressed) { //If 'a' is pressed it resets the background and resets the value
     if(key == 'a') {
       value = 0;
       clear();
       background(255,0,0);
     
  }
 }
}
