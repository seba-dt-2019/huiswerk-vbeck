Robot robot;

void setup() {  
  size(800, 800);
  background(0);
  frameRate(60);
  
  robot = new Robot();
}

void draw() {
  background(0);
  robot.display();
  fill(#ABCABA);
  ellipse(width/1.5, (height/2.5), 10, 10);
  robot.scan(#ABCABA);
}

void keyPressed() {
  
  switch(key) {
    case CODED:
      switch(keyCode) {
        case UP:
          robot.up();
          break;
          
        case DOWN:
          robot.down();
          break;
          
        case LEFT:
          robot.left();
          break;
        
        case RIGHT:
          robot.right();
          break;
      }
      break;
    case ENTER:
      print("\n\n\n\n\n");
      //robot.scan(#ABCABA);
      break;
  }
}
