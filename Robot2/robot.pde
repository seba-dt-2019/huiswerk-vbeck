class Robot {
  color robotColor;
  int robotWidth;
  int robotHeight;
  int xPos;
  int yPos;
  
  Cell[][] grid;
  
  Robot() {
    int i = 0, j = 0;  
    robotWidth = width / 20;
    robotHeight = height / 20;
    xPos = 0;
    yPos = 0;
    
    grid = new Cell[width / robotWidth][height / robotHeight];
    
    for(i = 0; i < (width / robotWidth); i++) {
      for(j = 0; j < (height / robotHeight); j++) {
        grid[i][j] = new Cell(i*robotWidth, j*robotHeight, robotWidth, robotHeight);
      }
    }
  }
  
  void display() {
    noStroke();
    grid[xPos][yPos].displayRobot();
  }
  
  void up() {
    yPos = constrain(--yPos, 0, grid[0].length - 1);
  }
  void down() {
    yPos = constrain(++yPos, 0, grid[0].length - 1);
  }
  
  void right() {
    xPos = constrain(++xPos, 0, grid.length - 1);
  }
  
  void left() {
    xPos = constrain(--xPos, 0, grid.length - 1);
  }
  
  boolean scan(color target) {
   int tempY, tempX = grid[xPos][yPos].x;
   color scanned;
   
  for(tempY = grid[xPos][yPos].y; tempY < (grid[xPos][yPos].y+1+robotHeight); tempY += (robotHeight / 10)) {
    for(tempX = grid[xPos][yPos].x; tempX < (grid[xPos][yPos].x+1+robotWidth); tempX += (robotWidth / 10)) {
      scanned = get(tempX, tempY);
      if(scanned == target) {
        println("Found");
        return true;
       }
    }
  }
   return false;
  }
  
  
  private class Cell {
    color cellColor;
    int x;
    int y;
    int cellWidth;
    int cellHeight;
    
    Cell(int tempx, int tempy, int tempWidth, int tempHeight) {
      cellColor = color(0, 255, 0);
      x = tempx;
      y = tempy;
      cellWidth = tempWidth;
      cellHeight = tempHeight;
    }
    
    void displayRobot() {
      fill(cellColor);
      rect(x, y, cellWidth, cellHeight);
    }
    
  }
  
}

  
  
