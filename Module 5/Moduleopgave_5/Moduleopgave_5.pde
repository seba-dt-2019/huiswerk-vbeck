final int MAXGEWICHT = 200,
          MINGEWICHT = 10,
          MAXLENGTE = 250,
          MINLENGTE = 50;
          
int sliderStartPositieX = 0,
    sliderBreedte = 0,
    sliderHoogte = 0;

int gewichtSliderPositieY = 0;
int lengteSliderPositieY = 0;

int gewichtPositie = 50,
    gewicht = gewichtPositie + MINGEWICHT;
    
int lengtePositie = 120,
    lengte = lengtePositie + MINLENGTE;    

void setup() {
  size(500, 500);
  smooth();
  sliderStartPositieX = width/20;
  sliderBreedte = width - (sliderStartPositieX*2);
  sliderHoogte = height / 20;
  gewichtSliderPositieY = height/10;
  lengteSliderPositieY = gewichtSliderPositieY + (sliderHoogte*2);

}

void draw() { 
  background(0); 
  
  
  tekenBMI(gewicht, lengte);
  bepaalSliderWaarde();
  gewichtSlider();
  lengteSlider();
}

void gewichtSlider() {
  tekenSlider(sliderStartPositieX, gewichtSliderPositieY, sliderBreedte, sliderHoogte, gewichtPositie, MAXGEWICHT - MINGEWICHT + 1);
  fill(255);
  text("Gewicht: "+gewicht+"kg", sliderStartPositieX, gewichtSliderPositieY+sliderHoogte+textAscent());
}

void lengteSlider() {
  tekenSlider(sliderStartPositieX, lengteSliderPositieY, sliderBreedte, sliderHoogte, lengtePositie, MAXLENGTE - MINLENGTE + 1);
  fill(255);
  text("Gewicht: "+(float)lengte/100+"m", sliderStartPositieX, lengteSliderPositieY+sliderHoogte+textAscent());
}

void bepaalSliderWaarde() {
  if(mousePressed) {
    if(mouseY >= gewichtSliderPositieY && mouseY < gewichtSliderPositieY + sliderHoogte) {
      gewichtPositie = bepaalPositie(sliderStartPositieX, sliderBreedte, MAXGEWICHT - MINGEWICHT + 1);
      gewicht = gewichtPositie + MINGEWICHT;
    }
    else if(mouseY >= lengteSliderPositieY && mouseY < lengteSliderPositieY + sliderHoogte) {
      lengtePositie = bepaalPositie(sliderStartPositieX, sliderBreedte, MAXLENGTE - MINLENGTE + 1);
      lengte = lengtePositie + MINLENGTE;   
    }

  }
  
}
