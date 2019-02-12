Grid grid;
Garbage garbage;
Robot robot;
int tileX = 0;
int tileY = 0;

void setup() {  
  size(1000, 800);
  background(0);
  frameRate(10);
  
  grid = new Grid();
  grid.display();
  robot = new Robot(grid);
  garbage = new Garbage(grid);
}

void draw() {
  grid.refresh();

  robot.display();
  garbage.display();
  
  if(robot.found) {
    robot.dispose();
    garbage.follow(robot.tileX, robot.tileY);
  } else
    robot.find(garbage.garbageColor);
}
