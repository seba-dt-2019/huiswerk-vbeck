// Moduleopgave 1
// Vincent Beck
// 02-02-2019
final int schermDelen = 6;
final int aantalStaven = 3;

float staafA = 20.0, staafB = 190.0, staafC = 150.0;
float gemiddelde = (staafA + staafB + staafC) / aantalStaven;
float staafBreedte = float(width) / 4, staafMidden = staafBreedte / 2;
float schermDeel = float(width) / schermDelen;
float zoom = 1;

size(800, 400);
smooth();
background(0);

zoom = (height - textAscent()) / max(staafA, staafB, staafC);

fill(255, 0, 0);
rect(schermDeel * 1 - staafMidden, height, staafBreedte, -staafA*zoom);
text(staafA, schermDeel * 1 - staafMidden, height - staafA*zoom); 

fill(0, 255, 0);
rect(schermDeel * 3 - staafMidden, height, staafBreedte, -staafB*zoom);
text(staafB, schermDeel * 3 - staafMidden, height -staafB*zoom); 

fill(0, 0, 255);
rect(schermDeel * 5 - staafMidden, height, staafBreedte, -staafC*zoom);
text(staafC, schermDeel * 5 - staafMidden, height - staafC*zoom);

stroke(255, 255, 255);
line(0, height - gemiddelde * zoom, width, height - gemiddelde*zoom);
