// Clase Juego
class Juego {
  constructor() {
    this.personaje = new Personaje();
    this.rocas = [];
    this.juegoTerminado = false;
    this.puntuacion = 0;
    this.colisionDetectada = false; // Variable para detectar colisión
    this.fondo = loadImage("data/fondoo.png");
   // this.sonido = loadSound("data/musica");
    
}
  setup() {
    createCanvas(600, 600);
    this.personaje.setup();
   // sonido.play();
}

  draw() {
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
    } else {
      textSize(16);
      textAlign(LEFT);
      fill(0, 128, 0); // Agrega color verde
      text(`Puntuación: ${this.puntuacion}`, 10, 20);
    }
  }

  keyPressed() {
    this.personaje.handleKeyPress(keyCode);
  }
}
