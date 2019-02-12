int credits = 25;

int reeksEven = 1;
int reeksOneven = 1;

boolean bewogen = true;
/*
Onderstaande variabelen worden als alternatieve methode gebruikt om te bepalen of de muis verplaatst is

int prevX = -1;
int prevY = -1;
*/

void setup() {  
  size(500, 500);
  background(0);

  rectMode(CENTER);

  textAlign(CENTER);
  textSize(18);
}

void draw() {
  background(0);

  fill(#F8FF43);
  rect(width / 2, height / 2, 400, 100);

  fill(#FA0011);
  text("Credits: " + credits, width / 2, height / 2);
}

void mouseMoved() {
  bewogen = true;
}

void mousePressed() {
  /*
  Onderstaande logica wordt gebruikt als alternatieve methode om te bepalen of de muis verplaatst is sinds de laatste klik
  
  if((prevX == mouseX) && (prevY == mouseY)) {
    println("Op dezelfde plek blijven klikken? Zo kan ik het ook..");
    return;
  }
  */
  
  if(bewogen == false) {
    println("Op dezelfde plek blijven klikken? Zo kan ik het ook..");
    return;
  }
  
  if((mouseX % 2 == 0) && (mouseY % 2 == 0)) {
    reeksOneven = 1;
    
    credits += 1 * reeksEven;
    println(reeksEven + " credit(s) erbij");
    
    reeksEven++;
    
  } else if((mouseX % 2 != 0) && (mouseY % 2 != 0))  {
    reeksEven = 1;
    
    credits -= 1 * reeksOneven;
    
    println("loser je verliest " + reeksOneven + " credit(s)");
    reeksOneven++;
    
  } else {
    println("Hier schiet je niks mee op");
    
  }
  
  if(credits <= 0) {
    credits = 25;
  }
  
  bewogen = false;
  
  /*
  Onderstaande variabelen worden gebruikt om op te slaan wat de laatste positie van de muis was
  prevX = mouseX;
  prevY = mouseY;
  */
}
