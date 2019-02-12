size(800, 800);

int xPosRechthoek = 10;
int yPosRechthoek = 20;

int hoogteRechthoek = constrain(200, 0, height - yPosRechthoek - 1);
int breedteRechthoek = constrain(hoogteRechthoek * 2, 0, width - xPosRechthoek - 1);

float xPosHorizontaleLijnStart = xPosRechthoek + 1;
float xPosHorizontaleLijnEind = xPosHorizontaleLijnStart + breedteRechthoek - 2;
float yPosHorizontaleLijn = yPosRechthoek + hoogteRechthoek / 2;

float xPosVerticaleLijn = xPosRechthoek + breedteRechthoek / 2;
float yPosVerticaleLijnStart = yPosRechthoek + 1;
float yPosVerticaleLijnEind = yPosRechthoek + hoogteRechthoek - 1;

rect(xPosRechthoek, yPosRechthoek, breedteRechthoek, hoogteRechthoek);

stroke(255,0,0);

line(xPosHorizontaleLijnStart, yPosHorizontaleLijn, xPosHorizontaleLijnEind, yPosHorizontaleLijn);

line(xPosVerticaleLijn, yPosVerticaleLijnStart, xPosVerticaleLijn, yPosVerticaleLijnEind);
