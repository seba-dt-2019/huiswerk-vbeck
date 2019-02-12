void setup() {  
  size(400, 400);
  background(0);
  println("Coördinaten staan in venster");
}

void draw() {
  background(0);
  text("X: " + mouseX, width / 2, height / 2);
  text("Y: " + mouseY, width / 2, (height / 2) + textAscent());
}
