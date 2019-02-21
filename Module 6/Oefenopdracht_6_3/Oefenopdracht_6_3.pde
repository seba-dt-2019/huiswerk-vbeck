final int ZIJDE = 15,
          AANTAL = 15;

void setup() {
  size(500, 500);
  smooth();
  
  int grootteGrootVierkant = ZIJDE * AANTAL,
      xPositieMiddenGrootVierkant = width/2,
      yPositieMiddenGrootVierkant = height/2;
      
  int xStartPuntKleineVierkantjes = xPositieMiddenGrootVierkant - (grootteGrootVierkant / 2),
      yStartPuntKleineVierkantjes = yPositieMiddenGrootVierkant - (grootteGrootVierkant / 2);
   
  if(grootteGrootVierkant > width || grootteGrootVierkant > height) {
    println("ERROR: Schermgrootte te klein om het vierkant te tekenen");
    return;
  }
  
  println(xStartPuntKleineVierkantjes, yStartPuntKleineVierkantjes);
  tekenGrootVierkant(xPositieMiddenGrootVierkant, yPositieMiddenGrootVierkant, grootteGrootVierkant);
  tekenKleineVierkantjes(xStartPuntKleineVierkantjes, yStartPuntKleineVierkantjes, ZIJDE, AANTAL);
  
}

void tekenGrootVierkant(int x, int y, int grootte) {
  noStroke();
  rectMode(CENTER);
  rect(x, y, grootte, grootte);
}

void tekenKleineVierkantjes(int xStart, int yStart, int grootte, int aantal) {
  stroke(0);
  fill(#FF0000);
  rectMode(CORNER);
  
  for(int kolom = 0; kolom < aantal; kolom++) {
    for(int rij = 0; rij < aantal; rij++) {
      rect(xStart+(rij*grootte), yStart+(kolom*grootte), grootte, grootte);
    }
  }
}
        

  
