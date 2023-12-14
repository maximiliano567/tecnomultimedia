// Clase Juego
class Juego {
  constructor() {
    this.personaje = new Personaje();
    this.rocas = [];
    this.juegoTerminado = false;
    this.puntuacion = 0;
    this.colisionDetectada = false; // Variable para detectar colisión
    this.fondo = loadImage("data/fondoo.png");
   
  }

  setup() {
    this.personaje.setup();
  }

  draw() {
    push();
    imageMode(CENTER);
    image(this.fondo, 300, 300);
    this.personaje.update();
    this.personaje.draw();

    for (let i = this.rocas.length - 1; i >= 0; i--) {
      const roca = this.rocas[i];

      if (this.colisionDetectada) { // Verificar colisión detectada
        roca.speed = 0; // Detener todas las rocas
      }

      roca.update();
      roca.draw();

      if (this.personaje.checkCollision(roca)) {
        console.log("¡Has perdido!");
        this.juegoTerminado = true;
        this.colisionDetectada = true; // Establece colisión detectada
        this.personaje.speed = 0;
      }

      if (roca.isOffScreen()) {
        this.rocas.splice(i, 1);
        this.puntuacion++;
      }
    }

    if (frameCount % 40 === 0) {
      this.rocas.push(new Roca());
    }

    if (this.juegoTerminado) {
      textSize(50);
      textAlign(CENTER);
      fill(250, 0, 0); // Agrega color rojo
      text("¡Juego terminado! ", width / 2, height / 2);

      // Reiniciar el juego
      this.resetGame();
    } else {
      textSize(16);
      textAlign(LEFT);
      fill(0, 128, 0); // Agrega color verde
      text(`Puntuación: ${this.puntuacion}`, 10, 20);
    }
    pop();
  }

  keyPressed() {
    this.personaje.handleKeyPress(keyCode);
  }

  resetGame() {
    // Reiniciar variables y propiedades del juego
    this.rocas = [];
    this.juegoTerminado = false;
    this.puntuacion = 0;
    this.colisionDetectada = false;

    // Reiniciar el personaje
    this.personaje.reset();

    // Vuelve a llamar a la función setup para configurar el juego nuevamente
    this.setup();
  }
}
