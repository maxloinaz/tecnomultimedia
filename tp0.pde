// Loinaz Maximo
// tp0 comision 1

PImage paisaje;

size(800,400);
paisaje= loadImage("panorama.jpg");
paisaje.resize(400,400);
background(94,178,240);
noStroke();
image(paisaje,0,0,400,400);


circle(530,67,35);
circle(575,110,40);
ellipse(444,25,85,35);
ellipse(444,80,80,60);
ellipse(775,85,40,20);


fill(21,116,42);
triangle(400,220,503,25,600,220);
fill(16,93,33);
triangle(550,220,650,47,800,150);
fill(21,116,42);
quad(570,220,640,147,800,147,800,220);
fill(16,93,33);
triangle(400,220,400,150,500,220);


fill(18,175,166);
rect(400,220,800,220);
fill(151,188,122);
triangle(400,248,400,239,600,248);
fill(151,188,122);
rect(400,248,800,400);
fill(185,240,140);
rect(400,275,800,400);


fill(196,197,198);
quad(450,400,400,250,550,250,550,400);
fill(210);
quad(570,400,567,355,640,367,640,400);
fill(171,181,188);
triangle(665,355,680,250,730,353);
fill(170);
square(746,300,55);
fill(171,181,188);
square(730,331,23);
