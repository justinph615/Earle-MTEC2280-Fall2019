// setup happens once at the beginning of your program
void setup() {
  size(500, 500);
}
// draw happens in a loop forever after that
void draw() {
  background(255);
  fill(mouseX);
  // draw a circle at the mouse position
  ellipse(mouseX, mouseY, 44, 44);

  stroke(255, 0, 0);
  //strokeWeight(4);  // the thickness of the outline
  // draw a line (x1,y1,x2,y2)
  line(0, 0, width, height);
}
