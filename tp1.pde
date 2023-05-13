// Loinaz Maximo
// tp1 comision 1
int segundos, tama;
PImage sitio1, sitio2, sitio3;
PFont t;
float posY = 115;
float vel = 1;
float posX = 880;
float verde, azul, rojo;
void setup() {
  size(640, 480);
  sitio1= loadImage ("matamata 1.jpg");
  sitio2= loadImage ("matamata 2.jpg");
  sitio3= loadImage ("matamata 3.jpg");
  t = loadFont("miletra.vlw");
  textFont(t);
  textAlign(CENTER, CENTER);
}
void draw() {
  textSize(35);
  if (frameCount%60==0) {
    segundos++;
  }
  if (segundos<=5) {
    image(sitio1, 0, 0, 640, 480);
    fill(255);
    text("En la región de Waikato, Nueva Zelanda, \nse sitúa una de las ciudades mágicas que aparecen \n en El Señor de los Anillos. \n Matamata, una zona campestre \n rodeada de naturaleza y perfecta \n para aquellos que buscan descansar unos días. ", width/2, posY);
    if (posY<height) {
      posY = posY+0.7 * vel;
    }
  } else if (segundos >=5 && segundos <=10) {
    image(sitio2, 0, 0, 640, 480);
    fill(255);
    text("Hay agencias que hacen excursiones  de un día completo \n a Matamata y recorren la casa de Bilbo Baggins \n que crearon para filmar la trilogía de \n El Señor de los Anillos y nunca la desarmaron.", posX, height/2 );
    if (posX>width/2) {
      posX= posX-4;
    }
  } else {
    image(sitio3, 0, 0, 640, 480);
    if (frameCount%60==0) {
      verde= random(150, 255);
      azul= random(150, 255);
      rojo= random(150, 255);
    }
    fill(verde, azul, rojo, 255);
    text("Si deseas tomar algo, hay bares, restaurantes \n y mucho que explorar en este hermoso lugar. ", width/2, 300);
  }
  if (segundos>=15) {
    fill(146, 245, 153);
    rect (500, 400, 100, 50);
    fill(0);
    textSize(15);
    text("Reiniciar", 550, 425);
  }
}
void mousePressed() {
  if (mouseX>500 && mouseX<600 && mouseY>400 && mouseY<450) {
    segundos= 0;
    posY=115;
    posX=880;
  }
}
