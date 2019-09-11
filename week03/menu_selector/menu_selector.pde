int myTextSize = 54;  // so we can change the font size at run time

int menuState = 1;  // keep track of what menu item is highlighted

void setup() {
  size(500, 500);
  // draw the text from its center
  textAlign(CENTER, CENTER);
}

void draw() {
  background(127);

  textSize(myTextSize);  // change the font size

  // first draw the "drop shadow text"
  fill(0); 
  // text() wants the string of text you are going to display
  // followed by the position in x,y
  text("Hello World", width/2, height/2);

  fill(127); 
  text("Hello World", width/2 - 2, height/2 - 2);

  // draw the interactive selection box
  // a series of if statements that check which menuState is active
  // and draw the rectangle accordingly
  rectMode(CENTER);  // easier to draw the rect from center
  
  // so if the menuState is equal to 1, draw the rect around that text
  if (menuState == 1) {
    rect(width/2, height/2 + 60, 100, 40);
  }
  // and so on...
  if (menuState == 2) {
    rect(width/2, height/2 + 100, 100, 40);
  }
  if (menuState == 3) {
    rect(width/2, height/2 + 140, 100, 40);
  }

  // draw my menu items text
  textSize(15);
  fill(0);
  text("World 1", width/2, height/2 + 60);
  text("World 2", width/2, height/2 + 100);
  text("Exit", width/2, height/2 + 140);
}

// check for keyboard input
void keyPressed() {

  // when you press DOWN on keyboard
  if (keyCode == DOWN) {
    // only increase if within 3 menu items
    if (menuState < 3) {
      menuState = menuState + 1;
    }
  }
  // when you press UP
  if (keyCode == UP) {
    if (menuState > 1) {
      menuState = menuState - 1;
    }
  }

  // add an "activate button" on spacebar press
  if (key == ' ') {
    // if we're on menu item #3 and space pressed, exit game
    if (menuState == 3) {
      exit();
    }
  }

  //println(menuState);
}
