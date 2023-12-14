let juego;

class AventuraGrafica {
  constructor() {
    this.pantalla = 1;
    this.fondo = loadImage("data/fondodepantalla00.png")
      this.fp2 = loadImage("data/fondodepantalla03.png")
      this.fp3 = loadImage("data/fondodepantalla09.png")
      this.fp4 = loadImage("data/fondodepantalla02.png")
      this.fp5 = loadImage("data/fondodepantalla01.png")
      this.fp6 = loadImage("data/fondodepantalla04.png")
      this.fp7 = loadImage("data/fondodepantalla05.png")
      this.fp8 = loadImage("data/fondodepantalla06.png")
      this.fp9 = loadImage("data/fondodepantalla07.png")
      this.fp10 = loadImage("data/fondodepantalla08.png")
      this.fp11 = loadImage("data/imagen7.png")
      this.fp12 = loadImage ("data/imagen6.png")
      this.terminado = false;
  }

  setup() {

    juego = new Juego();
    juego.setup();
   
}

  draw() {
 
    switch (this.pantalla) {
    case 1:
      image(this.fondo, 0, 0, width, height); // Mostrar la imagen de fondo
      textSize(20);
      fill(255, 0, 0);
      text("INICIAR AVENTURA", 230, 400);
      text("CREDITOS", 280, 480);
      maxito(180, 370, 280, 50);//iniciar aventura
      maxito(180, 450, 280, 50); //creditos
      break;
    case 2:
      image(this.fp2, 0, 0, width, height);
      fill(255); // Color de relleno blanco
      stroke(0); // Color del borde negro
      rect(100, 420, 220, 100); // Posición y tamaño del rectángulo
      textSize(15);
      textAlign(LEFT, TOP); // Alinear el texto a la izquierda y arriba dentro del rectángulo
      fill(0); // Color del texto negro
      text("Romeo y Julieta, dos jóvenes enamorados de familias rivales, se conocen en un baile y se enamoran a primera vista.", 105, 425, 210, 90);
      break;
    case 3:
      image(this.fp3, 0, 0, width, height);
      textSize(15);
      fill(255); // Color de relleno blanco
      stroke(0); // Color del borde negro
      rect(100, 420, 220, 100); // Posición y tamaño del rectángulo
      textAlign(LEFT, TOP); // Alinear el texto a la izquierda y arriba dentro del rectángulo
      fill(0); // Color del texto negro
      text("Deciden casarse en secreto con la ayuda del fraile Lorenzo.", 105, 425, 210, 90);
      break;
    case 4:
      image(this.fp4, 0, 0, width, height);
      fill(255); // Color de relleno blanco
      stroke(0); // Color del borde negro
      rect(100, 420, 220, 100); // Posición y tamaño del rectángulo
      textSize(15);
      textAlign(LEFT, TOP); // Alinear el texto a la izquierda y arriba dentro del rectángulo
      fill(0); // Color del texto negro
      text("En un duelo callejero, Mercutio, amigo de Romeo, es asesinado por Tybalt, primo de Julieta.", 105, 425, 210, 90);
      break;
    case 5:
      image(this.fp5, 0, 0, width, height);
      fill(255); // Color de relleno blanco
      stroke(0); // Color del borde negro
      rect(100, 420, 220, 100); // Posición y tamaño del rectángulo
      textSize(15);
      textAlign(LEFT, TOP); // Alinear el texto a la izquierda y arriba dentro del rectángulo
      fill(0); // Color del texto negro

      text("Romeo, lleno de ira y dolor, desafía a Tybalt y lo mata. ¿Qué castigo le espera a Romeo?", 105, 425, 210, 90);
      fill(255, 0, 0)
        textSize(40);
      //textAlign(CENTER, CENTER);
      text("A", 100, 530, 170);
      text("B", 300, 530, 170);
      text("C", 480, 530, 350);
      maxito(450, 525, 100, 50);  // Opción C
      maxito(270, 525, 100, 50); // Opción B
      maxito(70, 525, 100, 50); // Opción A
      break;
    case 6:
      image(this.fp6, 0, 0, width, height);
      fill(255); // Color de relleno blanco
      stroke(0); // Color del borde negro
      rect(100, 420, 220, 100); // Posición y tamaño del rectángulo
      textSize(15);
      textAlign(LEFT, TOP); // Alinear el texto a la izquierda y arriba dentro del rectángulo
      fill(0); // Color del texto negro
      text("Desesperados por estar juntos, Romeo y Julieta idean un plan arriesgado.", 105, 425, 210, 90);
      break;

    case 7:
      image(this.fp7, 0, 0, width, height);
      fill(255); // Color de relleno blanco
      stroke(0); // Color del borde negro
      rect(100, 420, 220, 100); // Posición y tamaño del rectángulo
      textSize(15);
      textAlign(LEFT, TOP); // Alinear el texto a la izquierda y arriba dentro del rectángulo
      fill(0); // Color del texto negro
      text("Los obligan a beber una pocion a Julieta y Romeo. Los dos tienen que luchar por su vida. ¿ LO LOGRARAN?", 105, 425, 210, 90);
      break;

    case 8:
      image(this.fp8, 0, 0, width, height);
      fill(255); // Color de relleno blanco
      stroke(0); // Color del borde negro
      rect(100, 420, 220, 100); // Posición y tamaño del rectángulo
      textSize(15);
      textAlign(LEFT, TOP); // Alinear el texto a la izquierda y arriba dentro del rectángulo
      fill(0); // Color del texto negro
      text("Romeo, desconociendo el plan, se entera de la 'muerte' de Julieta y decide unirse a ella en la muerte. ¡FIN! ", 105, 425, 210, 90);
      textSize(20);
      fill(255, 0, 0);
      text("Click en la pantalla.", 190, 550);
      break;
    case 9:
      image(this.fp9, 0, 0, width, height);
      fill(255); // Color de relleno blanco
      stroke(0); // Color del borde negro
      rect(100, 420, 220, 100); // Posición y tamaño del rectángulo
      textSize(17);
      textAlign(LEFT, TOP); // Alinear el texto a la izquierda y arriba dentro del rectángulo
      fill(0); // Color del texto negro
      text("Julieta despierta y encuentra a Romeo muerto a su lado. Devastada, se apuñala con la daga de Romeo y muere junto a él.", 105, 425, 210, 90 );
      break;
    case 10:
      image(this.fp10, 0, 0, width, height );
      fill(255 );//Color de relleno blanco
      stroke (0 );//Color del borde negro
      rect (100, 420, 220, 100 );//Posición y tamaño del rectángulo
      textSize (15 );
      textAlign (LEFT, TOP );//Alinear el texto a la izquierda y arriba dentro del rectángulo
      fill (0 );//Color del texto negro
      text ("La tragedia de Romeo y Julieta conmueve a las familias Montesco y Capuleto. Y finalmente ponen fin a su enemistad.", 105, 425, 210, 90 );
      fill(255, 0, 0);
      text("Click en la pantalla.", 190, 550);
      break;
    case 12:
     juego.draw();
     juego.keyPressed(); 
      break;
    case 11:
      image(this.fp11, 0, 0, width, height);
      textSize(20);
      textAlign(LEFT, TOP);
      fill(255, 0, 0);
      text("¡Aquí comienza el mini juego!", 150, 240);
      text("Click en la pantalla.", 190, 470);
      text (" SE MANEJA CON RIGTH ARROW Y LEFT ARROW", 50, 350);
      break;
    case 13:
      image(this.fp12, 0, 0, width, height);
      fill(255, 0, 0);
      text("Click en la pantalla.", 190, 470);
      break;
    }
  }

  cambiarPantalla() {
    if (this.pantalla === 1) {
      if (botton(180, 370, 280, 50)) { // Botón para iniciar aventura
        this.pantalla = 2;
      }
      if (botton(180, 450, 280, 50)) { // Botón para ver créditos
        this.pantalla = 13;
      }
    } else if (this.pantalla === 5) {
      if (botton(70, 525, 100, 50)) { // Botón A
        this.pantalla = 7;
      }
      if (botton(270, 525, 100, 50)) { //Botón B
        this.pantalla = 8
      }
      if (botton (450, 525, 100, 50)) { //Botón C
        this.pantalla = 9
      }
    } else if (this.pantalla === 7) {
      this.pantalla = 11;
    } else if (this.pantalla ===8) {
      this.pantalla = 1;
    } else if (this.pantalla ===10) {
      this.pantalla = 1;
    } else if (this.pantalla ===13) {
      this.pantalla = 1;
   
    } else if (this.pantalla === 11){
      this.pantalla = 12;


} else {
      this.pantalla++;
      if (this.pantalla > 13) {
      }
    }
  }



  mouseClicked() {
    this.cambiarPantalla();
   
}
 keyPressed() {
   
    // Verifica si el juego ha terminado
    if (resetGame()) {
      // Cambiar a otra pantalla
      this.pantalla = 1;
      // Restablecer el juego
      juego = new Juego();
      juego.setup();
    }
  }
}
