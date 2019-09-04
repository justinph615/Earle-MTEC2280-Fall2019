/*
A sketch in which shapes are drawn slightly off the screen
to give it the effect of an abstract painting
*/

void setup() {
  fullScreen();
  background(200, 100, 100);
}
void draw() {
}
void keyPressed() {
  fill(random(175), random(105), random(255));
  // instead of just using random(width) we are going to use
  // -250, width+250 as a range, so that it extends beyond
  // the boundaries of our canvas
  triangle(random(-250, width + 250), random(-250, height + 250), random(-250, width + 250), random(-250, height + 250),random(-250, width + 250), random(-250, height + 250));
}
