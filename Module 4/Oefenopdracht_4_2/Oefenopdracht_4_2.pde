float xKwadrant14 = 0;
float xKwadrant23 = 0;
float yKwadrant12 = 0;
float yKwadrant34 = 0;

float helftBreedte = 0;
float helftHoogte = 0;

void setup() {  
  size(600, 400);
  background(0);
  textAlign(CENTER);
  
  helftBreedte = width / 2;
  helftHoogte = height / 2;
  
  xKwadrant14 = helftBreedte * 1.5;
  xKwadrant23 = helftBreedte / 2;
  yKwadrant12 = helftHoogte / 2;
  yKwadrant34 = helftHoogte * 1.5;
   
}

void draw() {
  background(0);
  tekenBegroeting("Harry", xKwadrant23, yKwadrant12);
  tekenBegroeting("Marianne", xKwadrant14, yKwadrant12);
  tekenBegroeting("Ludo", xKwadrant23, yKwadrant34);
  tekenBegroeting("Maaike", xKwadrant14, yKwadrant34);
  tekenBegroeting("Vincent", width/2, height/2); 
}

void tekenBegroeting(String naam, float x, float y) {
  text("Hallo "+naam+", hoe gaat het met je?", x, y);
}
