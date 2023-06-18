//FUNCION QUE DIBUJA MI ARTE OPTICO:

void  dibuja_mi_arte_optico() {

  //PARA CENTRAR EL DIBUJO

  rectMode(CENTER);

  //variable para el dibujo
  for (int a=0; a<29; a++) {


    //color de relleno alternado:

    fill(255*(a%c));

    //variables para el dibujo
    float x = map( a, 0, 20, 600, 600);
    float y = map( a, 0, 20, 200, 290);

    //variable de tamaño
    float tam = map( a, -5, 29, 450, -5);

    //variable para que dibuje el rectangulo
    rect( x, y, tam, tam);
  }
}
