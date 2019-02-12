int robotX = 0;
int robotY = 0;

int robotSize = 0;

int cargoX = 0;
int cargoY = 0;

int cargoSize = 0;

boolean carryCargo = false;

void setup() {  
  size(500, 500);
  background(0);
  ellipseMode(CORNER);
  
  robotSize = width / 10;
  cargoSize = robotSize;
  
  cargoX = width / 2;
  cargoY = height / 2;
}

void draw() {
  background(0);
  robot(); 
  cargo();
}

void robot() {
  fill(255, 0, 0);
  rect(robotX, robotY, robotSize, robotSize);
}

void cargo() {
  fill(0, 255, 0);
  ellipse(cargoX, cargoY, cargoSize, cargoSize);
}

void keyPressed() {
  
  switch(key) {
    case CODED:
      switch(keyCode) {
        case UP:
          println("pressed up");
          robotY = constrain(robotY - robotSize, 0, height);
          break;
          
        case DOWN:
          println("pressed down");
          robotY = constrain(robotY + robotSize, 0, height - robotSize);
          break;
          
        case LEFT:
          println("pressed left");
          robotX = constrain(robotX - robotSize, 0, width);
          break;
        
        case RIGHT:
          println("pressed right");
          robotX = constrain(robotX + robotSize, 0, width - robotSize);
          break;
      }
      break;
      
    case ENTER:
      println("pressed enter");
      
      if((robotX == cargoX) && (robotY == cargoY)) {
        println("toggled carry");
        carryCargo = !carryCargo;
      }
      break;
  }
  
  if(carryCargo) {
    cargoX = robotX;
    cargoY = robotY;
  } 
}
