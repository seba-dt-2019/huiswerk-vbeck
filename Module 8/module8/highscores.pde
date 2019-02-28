void highscores() {
  background(#6D74F5);
  tekenHighscores();
}

void tekenHighscores() {
  float kaderBreedte = width * 0.9;
  float kaderHoogte = height * 0.9;
  float x = (width - kaderBreedte)/2;
  float y = (height - kaderHoogte)/2;
  
  fill(200);
  rect(x, y, kaderBreedte, kaderHoogte);
  fill(0);
  text("Niveau 1: "+(highscores[0]>0?str(highscores[0])+" zetten":"N/a")+"\n"+
       "Niveau 2: "+(highscores[1]>0?str(highscores[1])+" zetten":"N/a")+"\n"+
       "Niveau 3: "+(highscores[2]>0?str(highscores[2])+" zetten":"N/a")+"\n"+
       "Niveau 4: "+(highscores[4]>0?str(highscores[4])+" zetten":"N/a")+"\n"+
       "Niveau 5: "+(highscores[4]>0?str(highscores[4])+" zetten":"N/a")+"\n",
       x+kaderBreedte/2, y+kaderHoogte/2);
}

void gekliktInHighscores() {
  scherm = HOOFDMENU;
}
