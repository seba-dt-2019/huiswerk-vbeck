int credits = 0;

int prevX = -1;
int prevY = -1;
void setup() {  
  size(500, 500);
  background(0);

  rectMode(CENTER);

  textAlign(CENTER);
  textSize(18);
  
  credits = 1;
}

void draw() {
  background(0);

  fill(#F8FF43);
  rect(width / 2, height / 2, 400, 100);

  fill(#FA0011);
  text("Credits: " + credits, width / 2, height / 2);
}

void mousePressed() {
  if((prevX == mouseX) && (prevY == mouseY)) {
    println("Op dezelfde plek blijven klikken? Zo kan ik het ook..");
    return;
  }
  
  if((mouseX % 2 == 0) && (mouseY % 2 == 0)) {
    credits++;
    println("Credit erbij");
  } else if((mouseX % 2 != 0) && (mouseY % 2 != 0))  {
    credits--;
    println("loser");
  } else {
    println("Hier schiet je niks mee op");
  }
  
  if(credits <= 0) {
    credits = 25;
  }
  
  prevX = mouseX;
  prevY = mouseY;
  
}
