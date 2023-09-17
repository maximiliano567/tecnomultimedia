function pantallajugando() {
  image(img7, 0, 0, 600, 600);
  text(contador, 50,50);
  contador++
  
  if(contador > 600 ){
    estado =3;}
  // Comportamiento de las variables del enemigo:
  for (let i = 0; i < 10; i++) {
    y_enemigo[i] += vel_enemigo; // Agregar la velocidad a la posición vertical de cada enemigo
    if (y_enemigo[i] > height + r_enemigo) { // Si un enemigo sale de la pantalla
      y_enemigo[i] = -r_enemigo - random(50, 100); // Reiniciar su posición vertical
      x_enemigo[i] = random(r_enemigo, width - r_enemigo); // Reiniciar su posición horizontal
    }
  }

  // Dibujo de los enemigos:
  push();
  fill(180);
  imageMode(CENTER);
  for (let i = 0; i < 6; i++) {
    image(img2, x_enemigo[i], y_enemigo[i], r_enemigo * 2, r_enemigo * 2);
  }
  pop();

  // Detectar colisiones entre el jugador y los enemigos:
   for (let i = 0; i < 10; i++) {
    if (dist(x, y, x_enemigo[i], y_enemigo[i]) < 20) {
      x_enemigo[i] = 50;
      y_enemigo[i] = 50;
      estado =2 ;
  }
  }
}
 function pantallapersonaje(){
   

   
  
 
   if (keyIsPressed) { // esta variable tipo booleana devuelve true cuando presiono teclado
  if (keyCode == UP_ARROW && y >=d) {  //FLECHA IZQUIERDA
  y-=p;
  }else if (keyCode == DOWN_ARROW && y<= height-d ) {
    y += p;
  } else if (keyCode == LEFT_ARROW && x >=d){
    x-= p;
  } else if (keyCode == RIGHT_ARROW && x<= width-d){
    x+=p;
  }

   }
    for (let i = 0; i< 10; i++) {
   image(img1,x,y,d+50,d+50);// PERSONAJE
    }
 }
 
