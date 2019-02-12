float vlagBreedte = 300.0;

size(400, 400);
smooth();

rect(0, 0, vlagBreedte, vlagBreedte / 2);

fill(255, 0, 0);
ellipse(vlagBreedte / 2, vlagBreedte / 4, vlagBreedte / 3, vlagBreedte / 3);

fill(0, 0, 0);
textAlign(CENTER,CENTER);
textSize(vlagBreedte / 15);
text("Nippon", vlagBreedte/2, vlagBreedte / 4);
