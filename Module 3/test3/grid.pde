class Grid { 
  int tilesize;
  int xTiles;
  int yTiles; 
  color tileColor;
  
  
  Grid() {
    tilesize = width / 20;
    xTiles = (width - tilesize) / tilesize;
    yTiles = (height - tilesize)/ tilesize;
    
    tileColor = color(0, 0, 255);
  }
  
  void display() {
    int i = 0, j =0;
        
    fill(tileColor);
    for (i = 0; i < height + tilesize; i += tilesize) {
      for (j = 0; j < width; j += tilesize) {
        rect(j, i, tilesize, tilesize);
      }
    }
   fill(255);
   rect(0, 0, tilesize, tilesize);
  }
  
  void refresh() {
    background(0);
    display();
  }
  
  void tile(int x, int y, color bodyColor) {
    fill(bodyColor);
    rect(getX(x), getY(y), tilesize, tilesize); 
     
  }
  
  void circle(int x, int y, color bodyColor) {
    fill(bodyColor);
    ellipseMode(CORNER);
    ellipse(getX(x), getY(x), tilesize, tilesize);
  }

  
  int getX(int x) {
    return constrain(x, 0, xTiles) * tilesize;
  }
  int getY(int y) {
    return constrain(y, 0, yTiles) * tilesize;
  }
    
}
