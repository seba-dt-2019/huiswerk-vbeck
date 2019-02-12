float vlagBreedte = 300.0;
int xPos = 50;
int yPos = 120;

size(400, 400);
smooth();

rect(xPos, yPos, vlagBreedte, vlagBreedte / 2);

fill(255, 0, 0);
ellipse(xPos + vlagBreedte / 2, yPos + vlagBreedte / 4, vlagBreedte / 3, vlagBreedte / 3);

fill(0, 0, 0);
textAlign(CENTER,CENTER);
textSize(vlagBreedte / 15);
text("Nippon", xPos + vlagBreedte/2, yPos + vlagBreedte / 4);
