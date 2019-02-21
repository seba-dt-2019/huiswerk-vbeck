void tekenSlider(float x, float y, float breedte, float hoogte, int positie, int nPosities) {
  float blokjeBreedte = breedte / nPosities;
  noStroke();
  
  fill(255);
  rect(x, y, breedte, hoogte);
  
  fill(#2257F0);
  rect(x+positie*blokjeBreedte, y, blokjeBreedte, hoogte);
}

int bepaalPositie(float x, float breedte, int nPosities) {
  float blokjeBreedte = breedte / nPosities;
  
  if(mouseX < x) return 0;
  else if(mouseX >= breedte + x) return nPosities - 1;
  else return floor((mouseX - x) / blokjeBreedte);
}
