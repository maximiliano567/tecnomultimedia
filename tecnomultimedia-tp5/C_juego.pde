class Juego {



  PImage img;
  Protagonista Prota;
  Obstaculo[] Obst;
  int cantEnemigos = 5;
  int estado;
  int contador;
  Fondo fondo;
  Creditos Cred;
  Ganar Win;
  Boton boton1;
  Boton boton2;

  Juego() {
    boton1=new Boton("EMPEZAR JUEGO", width/1.5, height/2, 200, 50);
    boton2=new Boton("CREDITOS", width/1.5, height/2+110, 200, 50);

    img=loadImage("mapa.jpg"); 
    Win = new Ganar();
    Cred = new Creditos();
    Obst = new Obstaculo[cantEnemigos];
    for (int i=0; i<cantEnemigos; i++) {
      Obst[i] = new Obstaculo();
      Prota = new Protagonista();
      contador=0;
      fondo = new Fondo();
      estado=0;
    }
  }
  void dibujarJuego() {



    if (estado==0) {
      fondo.dibujarFondo();
      boton1.actualizar();
      boton2.actualizar();
    } else if (estado==1) {
      contador++;
      if (contador>2000) { 
        estado=2;
      }
      image(img, 0, 0);
      Prota.dibujarProta();
      textSize(24);
      text(contador, 20, 20);
      for ( int i = 0; i < cantEnemigos; i ++) {
        Obst[i].dibujarObst();
        if ( Obst[i].colision(Prota.x, Prota.y, Prota.ancho, Prota.alto)
          ) { 
          contador=0;
        }
      }
    } 
    if (estado==2) {
      Win.dibujarGanar();
    } else if (estado==3) {
      Cred.dibujarCred();
    }
  }

  void click() {
    if (estado==0) {
      if (boton1.mouseEstaEncima()) {
        estado=1;
      }
      if (boton2.mouseEstaEncima()) {
        estado=3;
      } else if (estado==1) {
      }
    }
    
  }
  void volverAlInicio() {
      if (keyPressed) {
        if (key == 'r'){
          estado=0;
      }
    }
}
}
