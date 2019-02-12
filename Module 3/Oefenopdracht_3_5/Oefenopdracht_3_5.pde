int xMuis = 0;
int yMuis = 0;

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
  text("(" + xMuis + " - " + yMuis + ")", width / 2, height / 2);
}

void mousePressed() {
  if((mouseX % 2 == 0) && (mouseY % 2 == 0)) {
    xMuis = mouseX;
    yMuis = mouseY;
  }
}
