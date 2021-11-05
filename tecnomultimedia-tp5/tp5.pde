///\TP5\///
///\Tomas Rojas y Maximiliano Daniel Lucero\///
////\85185/9\////////////\85172/4\////////
////////\Link al video: https://youtu.be/mW6186T-3mE ///////
Juego juego;
void setup() {
  size(600, 400);
  juego= new Juego();
}


void draw() {
  juego.dibujarJuego();
}

void mousePressed(){
  juego.click();
}
void keyPressed(){
  juego.volverAlInicio();
}
