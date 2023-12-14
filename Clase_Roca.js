// Clase Roca
class Roca {
  constructor() {
    this.x = random(width);
    this.y = -50;
    this.speed = random(1, 5);
    this.size = random(10, 40);
    this.Pocion = loadImage("data/Pocion.png");
    this.ancho = 100;
    this.alto = 100;
  }

  update() {
    // Actualización de la posición de la roca
    this.y += this.speed;
  }

  draw() {
    // Dibuja la roca en la pantalla
    imageMode(CENTER)
      image(this.Pocion, this.x, this.y, this.ancho, this.alto);
  }

  isOffScreen() {
    // Verifica si la roca está fuera de la pantalla
    return this.y > height + this.alto / 2;
  }
}
