class Fondo {
  PImage img1;

  Fondo() {
    img1=loadImage("inicio.jpg");
  }
  void dibujarFondo() {
    image(img1, 0, 0);
  }
}
