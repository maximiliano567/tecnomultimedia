class Obstaculo {
  float x, y, ancho, alto;
  float despX, despY;
  PImage img2;

  Obstaculo() {
    pushStyle();
    imageMode(CENTER);
    img2=loadImage("roca.png");
    x=random(20, 500);
    y=-100;
    despX=0;
    despY=4;
    ancho=30;
    alto=50;

    popStyle();
  }
  void dibujarObst() {
    image(img2, x, y);
    y+=3;
    Mover();
  }

  void Mover() {
    if (y>410) {
      y= -400;
      x=random(20, 500);
    }
  }
  void orden() {
    Mover();
    dibujarObst();
  }
  boolean colision(float x_, float y_, float alto_, float ancho_) {
    if (x-ancho/2 < x_+ancho_/2 && x+ancho/2 > x_-ancho_/2 && y-alto/2 < y_+alto_/2 && y+alto/2 > y_-alto_/2) {
      return true;
    } else { 
      return false;
    }
  }
}
