size(300, 400);
background(0, 0, 0);
fill(0, 255, 0);
int yPos = 15;
int offset = 15;
int line = 0;


text("89 + 17 = " + (89+17), 0, offset * ++line);
text("125 - 23 = " + (125-23), 0, offset * ++line);
text("75 * 3 = " + (75*3), 0, offset * ++line);
text("45 % 7 = " + (45%7), 0, offset * ++line);
text("45 / 7 = " + (45/7), 0, offset * ++line);
text("45 / 7 = " + (45.0/7), 0, offset * ++line);
