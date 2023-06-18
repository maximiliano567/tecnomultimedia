//TP#2 — Funciones y Ciclos FOR// //COMISION 3// PROF: DAVID DEBOIAN//
//ALUMNO: LUCERO MAXIMILIANO //
//LEGAJO:85172/4 //
// ENLACE AL VIDEO EXPLICATIVO DE MI TRABAJO: https://youtu.be/M-iSI2fMezE



//variable de grosor de las lineas
float c = 2;

float posicionX;
float posicionY;

PImage ilusion;

void setup() {

  size (800, 400);

  //VOLVER A LA OBRA EN SU ESTADO INICIAL


  //ESTAS DOS VARIABLES SON PARA POSICIONAR LA IMAGEN
  posicionX=599;
  posicionY=200;

  //CARGAR IMAGEN
  ilusion = loadImage("ilusion.jpeg");

  //CAMBIAR TAMAÑO DE LA IMAGEN
  ilusion.resize(400, 400);
}

void draw() {

  background(255);

  tunel();

  image (ilusion, 0, 0);
}

void tunel() {


  //Grosor de los bordes de las lineas de dibujo
  strokeWeight(0);

  //INVOCO FUNCION DECLARADA
  dibuja_mi_arte_optico();
}
void mousePressed() {
  c=random(1.35);
}

void keyPressed() {
  c=2;
}
