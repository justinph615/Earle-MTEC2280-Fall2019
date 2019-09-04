void setup() {
  size(500,500);
}

void draw() {
  
}

// when a key is pressed,
// execute the following code
void keyPressed() {
  // print a number to the console
  // that number must be rounded down
  // into an INT
  // we also want it to be 1->6 rather than 0->5
  // so we have to give it an offset
  println(int(random(6)) + 1);
}
