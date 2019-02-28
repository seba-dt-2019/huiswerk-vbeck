void setup() {
  size(500, 500);
  String boodschappen[] = { 
    "Brood",
    "Melk",
    "Eieren",
    "Vleeswaren",
    "Koekjes"
  };
  
  drukAf(boodschappen);
}

void drukAf(String[] boodschappen) {
  for(int i = 0; i < boodschappen.length; i++) {
    println("["+i+"] "+boodschappen[i]);
  }  
}
