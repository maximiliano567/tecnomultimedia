class Protagonista {
  float x, y, ancho, alto;
  float despX;
  PImage img3;

  Protagonista() {
    img3=loadImage("ninio.png");
    x=300;
    y=330;
    ancho=30;
    alto=50;
  }
  void dibujarProta() {
    pushStyle();
    imageMode(CENTER);
    image(img3, x, y);
    popStyle();
    if (keyPressed && (key == CODED)) {
      if (keyCode == LEFT) {
        x-=2;
      } else if (keyCode == RIGHT) {
        x+=2;
      }
    }
  }
}
