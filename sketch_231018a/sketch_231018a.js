// TP5 /////////////
// Lucero, Maximiliano //////
// Legajo:85172/4 /////////<
// LINK DEL VIDEO DE LA EXPLICACION DEL JUEGO:  https://youtu.be/E6xpHhwu_ak

let juego;

function setup() {
  juego = new Juego();
  juego.setup();
  
}

function draw() {
  juego.draw();

}

function keyPressed() {
  juego.keyPressed();
}
