int[][] cirkels = { {10,15},{100,130},{77,43},{30, 145},{185,17},{99,76} };
final int DIAMETER = 20;
final int GEEL = #FFFF00;
final int ROOD = #FF0000;

void setup() {
  size(200, 200);
  ellipseMode(CENTER);
}

void draw() {
  background(#000000);
  tekenCirkels(cirkels); 
}

void tekenCirkels(int[][] cirkels) {

  for(int i = 0; i<cirkels.length; i++) {
    if(dist(mouseX, mouseY, cirkels[i][0], cirkels[i][1]) <= DIAMETER/2) {
      fill(ROOD);
      if(mousePressed)
        println("Geklikt op cirkel met index:", i, "coördinaten:", cirkels[i][0], cirkels[i][1]);
        delay(100);
    }
    else {
      fill(GEEL);
    }
      
    ellipse(cirkels[i][0], cirkels[i][1], DIAMETER, DIAMETER);
  }
}
