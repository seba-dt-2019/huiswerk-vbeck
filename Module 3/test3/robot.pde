class Robot {
  color robotColor;
  Grid g;
  int tileX;
  int tileY;
  boolean found;
  int score;
  
  int lastX;
  int lastY;
  
  Robot(Grid G) {
    robotColor = color(255,0,0);
    tileX = 0;
    tileY = 0;
    lastX = 0;
    lastY = 0;
    found = false;
    score = 0;
    g = G;
    g.tile(tileX, tileY, robotColor);
    
  }
  
  void display() {
    g.tile(tileX, tileY, robotColor);
  }
  
  void dispose() {
    if(tileX > 0)
      tileX--;
    if(tileY > 0)
      tileY--;
      
    if((tileY == 0) && (tileX == 0)) {
      score++;
      found = false;
      println(score);
    }
  }
  
  void find(color Target) {
    if(!found) {
      moveRandom();
      sense(garbage.garbageColor);
    }
  }
  
  void sense(color Color) {
    color c = get(g.getX(tileX)+g.tilesize/2, g.getY(tileY)+g.tilesize/2);
    if(c == Color)
      found = true;
  }
  
  void moveRandom() {
    int randX = 2;
    int randY = 2;
    
    randX = (int) random(3);
    randY = (int) random(3);
    
    switch(randX) {
       case 0:
         tileX = constrain(--tileX, 0, grid.xTiles);
         break;
       case 1:
         tileX = constrain(++tileX, 0, grid.xTiles);
         break;
    }
    switch(randY) {
      case 0:
        tileY = constrain(--tileY, 0, grid.yTiles);
        break;
      case 1:
        tileY = constrain(++tileY, 0, grid.yTiles);
        break;
    }
  }
}

  
  
