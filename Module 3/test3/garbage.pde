class Garbage {
  color garbageColor;
  Grid g;
  int garbageX;
  int garbageY;
  
  Garbage(Grid G) {
    g = G;
    reset();
    garbageColor = color(220, 100, 10);
  }
  
  void display() {
    if((garbageX == 0) && (garbageY == 0))
      reset();
    
    g.circle(garbageX, garbageY, garbageColor);
  }
  void reset() {
    garbageX = (int) random(1, g.xTiles);
    garbageY = (int) random(1, g.yTiles);
  }
  
  void follow(int x, int y) {
    garbageX = x;
    garbageY = y;
  }
}
    
