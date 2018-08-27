float value = 0;

void setup() {
  size(640,320);
  background(255,0,0);
  smooth();
  strokeWeight(3);
  
}

void draw() {
  //Vorm: arc(x, y, width, height, start, stop);
  
   arc(320, 160, 250, 250, 0, value);
}

void mousePressed() {
  if (mousePressed == true) {
      value = value + PI/18;
  }
}
