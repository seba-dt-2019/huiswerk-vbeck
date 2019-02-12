int schijfX = 0;
int schijfY = 0;
int schijfGrootte = 0;
boolean richting = false; //false = links, true = rechts

int snelheid = 60;

int hits = 0;
int misses = 0;

final int knopHoogte = 50;
final int knopBreedte = 100;
int knopX = 0;
int knopY = 0;
String knopTekst = "";

boolean start = false;

void setup() {  
  size(600, 400);
  background(0);
  textSize(18);
  
  frameRate(snelheid);

  knopX = (width / 2) - knopBreedte / 2;
  knopY = height - knopHoogte;

  schijfGrootte = width / 12;
  schijfX = width / 2;
  schijfY = height / 2;
}

void draw() {
  background(0);
  userInterface(); 
  
  if(start)
    schietSchijf();
}

void mousePressed() {
  if((mouseX >= schijfX - schijfGrootte / 2) && (mouseX <= schijfX + schijfGrootte / 2) && 
    (mouseY >= schijfY - schijfGrootte / 2) && (mouseY <= schijfY + schijfGrootte / 2)) {
    println("hit");
    hits++;
  } 
  else if((mouseX >= knopX) && (mouseX <= knopX + knopBreedte) &&
            (mouseY >= knopY) && (mouseY <= knopY + knopHoogte)) {
    start = !start;
    println("Toggled start");
    
    misses = 0;
    hits = 0;
    
    schijfX = width / 2;
    schijfY = height / 2;
  }
  else {
    println("miss");
    misses++;
  }
}


//==================[User interface]==================

void userInterface() {
  if(start) {
    fill(255);
    text("Aantal raak: "+hits+"\nAantal mis: "+misses, 0, 0 + textAscent());
    knopTekst = "Stop";
  } else
    knopTekst = "Start";
    
  fill(0,255,0);
  rect(knopX, knopY, knopBreedte, knopHoogte);

  fill(0);  
  text(knopTekst, knopX + knopBreedte / 4, knopY + knopHoogte / 2);
  
}

//==================[Schietschijf functies]==================
void schietSchijf() {
  tekenSchijf();
  
  if(richting)
    schijfX = constrain(++schijfX, 0 + schijfGrootte / 2, width - schijfGrootte / 2);
  else 
    schijfX = constrain(--schijfX, 0 + schijfGrootte / 2, width - schijfGrootte / 2);
    
  if((schijfX ==  schijfGrootte / 2) || (schijfX == width - schijfGrootte / 2))
    richting = !richting;
    
    
}

void tekenSchijf() {
  fill(255, 0, 0);
  ellipse(schijfX, schijfY, schijfGrootte, schijfGrootte);
  fill(255, 255, 255);
  ellipse(schijfX, schijfY, schijfGrootte / 1.5, schijfGrootte / 1.5);
  fill(255, 0, 0);
  ellipse(schijfX, schijfY, schijfGrootte / 3, schijfGrootte / 3);
  fill(255, 255, 255);
  ellipse(schijfX, schijfY, schijfGrootte / 6, schijfGrootte / 6);
}
