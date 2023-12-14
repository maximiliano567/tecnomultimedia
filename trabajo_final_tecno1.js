// TP FINAL DE TECNO 1 //// COMISION 3 /////////////
// Lucero, Maximiliano //////
// Legajo:85172/4 /////////<

let aventura;

function setup() {
  createCanvas(600, 600);

  aventura = new AventuraGrafica();
  aventura.setup();
}

function draw() {
  aventura.draw();
 
}

function mouseClicked() {
  aventura.mouseClicked();

  if (aventura.pantalla === 1 && mouseX > 230 && mouseX < 430 && mouseY > 380 && mouseY < 420) {
    aventura.pantalla = 2;
  }
  if (aventura.pantalla === 1 && mouseX > 280 && mouseX < 450 && mouseY > 280 && mouseY < 50) {
    aventura.pantalla = 2;
  }

  if (aventura.pantalla === 5 && mouseX > 70 && mouseX < 170 && mouseY > 525 && mouseY < 575) {
    aventura.pantalla = 7;
  }
 
}
