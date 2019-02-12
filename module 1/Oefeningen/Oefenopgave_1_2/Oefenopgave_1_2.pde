size(300, 400);

int yPos = 15;
int offset = 15;
int line = 0;

/* 
Per regel wordt de positie bepaald door een bepaalde offset vermenigvuldigd met het regelnummer.
Op deze manier begint de eerste regel (regelnummer 1) met de waarde van de offset (x*1=x).
De hierop volgende regels verspringen steeds met de waarde van de offset, door het verhogen van het regelnummer met 1.
Het verhogen van het regelnummer met 1 wordt gedaan met de ++ operator, voorafgaand aan het variabel (pre-increment.)
Hiermee wordt voorkomen dat de regels over elkaar heen worden getekend.

Met deze aanpak kan middels dezelfde berekening een nieuw regel worden toegevoegd zonder dat de regels over elkaar
heen worden getekend.
*/

text("89 + 17 = " + (89+17), 0, offset * ++line);
text("125 - 23 = " + (125-23), 0, offset * ++line);
text("75 * 3 = " + (75*3), 0, offset * ++line);
text("45 % 7 = " + (45%7), 0, offset * ++line);
text("45 / 7 = " + (45/7), 0, offset * ++line);
text("45 / 7 = " + (45.0/7), 0, offset * ++line);
