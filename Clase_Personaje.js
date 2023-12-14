// Clase Personaje
class Personaje {
  constructor() {
    this.x = 400;
    this.y = 450;
    this.speed = 5;
    this.size = 400;
    this.romeoyjulieta = loadImage("data/romeoyjulieta.png");
    this.ancho = 200;
    this.alto = 300;
  }

  setup() {
    // Configuración adicional del personaje
  }

  update() {
    // Actualización de la posición del personaje
    if (keyIsDown(LEFT_ARROW)) {
      this.x -= this.speed;
    } else if (keyIsDown(RIGHT_ARROW)) {
      this.x += this.speed;
    }

    if (this.x < this.ancho / 2) {
      this.x = this.ancho / 2;
    } else if (this.x > width - this.ancho / 2) {
      this.x = width - this.ancho / 2;
    }
  }

  draw() {
    // Dibuja el personaje en la pantalla
    imageMode(CENTER)
      image(this.romeoyjulieta, this.x, this.y, this.ancho/2, this.alto/2);
  }

  checkCollision(roca) {
    // Verifica si hay colisión entre el personaje y una roca
    const distancia = dist(this.x, this.y, roca.x, roca.y);
    return distancia < (this.ancho/2 + roca.size/2) && distancia < (this.alto/2 + roca.size/2);
  }
  reset() {
    // Restablece posición y estado del personaje
    this.x = 400;
    this.y = 450;
    this.speed = 5;
    this.ancho = 200;
    this.alto = 300;
  }

  handleKeyPress(keyCode) {
    // Manejar las teclas presionadas para mover al personaje
  }
}
