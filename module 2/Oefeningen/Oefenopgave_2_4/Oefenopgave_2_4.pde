int middelpuntX = width / 2;
int middelpuntY = height / 2;

int hoogteRechthoek = constrain(100, 0, height - 1);
int breedteRechthoek = constrain(hoogteRechthoek * 2, 0, width - 1);

int xPosRechthoek = middelpuntX - breedteRechthoek / 2 - 1;
int yPosRechthoek = middelpuntY - hoogteRechthoek / 2 - 1;

float xPosHorizontaleLijnStart = xPosRechthoek + 1;
float xPosHorizontaleLijnEind = xPosHorizontaleLijnStart + breedteRechthoek - 2;
float yPosHorizontaleLijn = yPosRechthoek + hoogteRechthoek / 2;

float xPosVerticaleLijn = xPosRechthoek + breedteRechthoek / 2;
float yPosVerticaleLijnStart = yPosRechthoek + 1;
float yPosVerticaleLijnEind = yPosRechthoek + hoogteRechthoek - 1;

float hoogteKwadrant = hoogteRechthoek / 2 - 1;
float breedteKwadrant = breedteRechthoek / 2 - 1;

float yPosKwadrant34 = hoogteKwadrant + 2 + yPosRechthoek;
float yPosKwadrant12 = yPosRechthoek+1;
float xPosKwadrant14 = xPosVerticaleLijn + 1;
float xPosKwadrant23 = xPosRechthoek+1;


size(50, 200);
rect(xPosRechthoek, yPosRechthoek, breedteRechthoek, hoogteRechthoek);

stroke(255,0,0);
line(xPosHorizontaleLijnStart, yPosHorizontaleLijn, xPosHorizontaleLijnEind, yPosHorizontaleLijn);
line(xPosVerticaleLijn, yPosVerticaleLijnStart, xPosVerticaleLijn, yPosVerticaleLijnEind);

noStroke();
//Kwadrant 1
fill(0,0,255);
rect(xPosKwadrant14, yPosKwadrant12, breedteKwadrant, hoogteKwadrant);

//Kwadrant 2
fill(0,255,0);
rect(xPosKwadrant23, yPosKwadrant12, breedteKwadrant, hoogteKwadrant);

//Kwadrant 3
fill(0,0,255);
rect(xPosKwadrant23, yPosKwadrant34, breedteKwadrant, hoogteKwadrant);

//Kwadrant 4
fill(0,255,0);
rect(xPosKwadrant14, yPosKwadrant34, breedteKwadrant, hoogteKwadrant);
