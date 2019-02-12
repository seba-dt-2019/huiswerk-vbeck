void setup() {  
  size(400, 400);
  background(0);
  textSize(20);
}

void draw() {
  background(0);
  text(millis() / 1000, width / 2, height / 2);
}
