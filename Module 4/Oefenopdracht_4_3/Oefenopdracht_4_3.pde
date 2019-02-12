

void setup() {
  drukaf(-4.999);
}

void drukaf(float getal) {
  println("Getal\t:", getal);
  println("int()\t:", int(getal));
  println("round()\t:", round(getal));
  println("floor()\t:", floor(getal));
  println("ceil()\t:", ceil(getal));
  println();
}
