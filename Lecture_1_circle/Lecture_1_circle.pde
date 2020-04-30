import processing.pdf.*;

void setup(){
  noLoop();
  beginRecord(PDF, "CIRCLE" + ".PDF");
  size(400, 400);
  stroke(0, 125, 255);
  strokeWeight(4);
  background(255);
}

void draw() {
  float x = width/2;
  float y = height/2;
  circle(x, y);
  endRecord();
}

void circle (float xc, float yc){
  float a = 100;
  int steps = 50;
  float dt = TWO_PI / steps;
  
  for (int i=0; i<steps; i++){
    float t = i * dt;
    float x = a * cos(t);
    float y = a * sin(t);
    point(xc + x, yc + y);
  }
}
