/*
  Drawing random thickness greyscale lines
  on a red background, a bit like abstract art
*/

void setup() {
  // make it fullscreen
  fullScreen();
  background(255,0,0);  // red background
}

void draw() {
    
  // generate a fully random color
  fill(random(255), random(255), random(255));
  
  // draw a random line
  stroke(random(255));  // random stroke color
  strokeWeight(random(25));  // random stroke weight
  
  // a line is two pairs of coordinates, so just use
  // random(width), random(height) twice
  line(random(width), random(height), random(width), random(height));
}
