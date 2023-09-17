//MAXIMILIANO LUCERO // LEGAJO: 85172/4

//TP4////////////

//LINK DEL VIDEO// https://youtu.be/qPCPnnJVryw
var estado =0;
let img1, img2 , img3, img4, img5, img6, img7;
// variables del enemigo
//var x_enemigo, y_enemigo,r_enemigo,vel_enemigo;
var x_enemigo = [];
var y_enemigo = [];
var r_enemigo;
var vel_enemigo;
let contador = 0;

//variables para manejar mi personaje
let x,y,p,d;

function setup() {
createCanvas(600,600);
//inicializo mis variables
x =300;
y = 500;
p = 20; // paso
d = 55; // diametro







img1 = loadImage("data/imagen1.png");
img2 = loadImage("data/imagen2.png");
img3 = loadImage("data/imagen3.png");
img4 = loadImage("data/imagen4.png");
img5 = loadImage("data/imagen5.png");
img6 = loadImage("data/imagen6.png");
img7 = loadImage("data/imagen7.png");


}


function draw() {

image(img3, 0, 0, 600, 600);

if (estado==0){
//inicio
pantallaInicio();

}else if (estado==1){  
 //jugando
 pantallajugando();
 pantallapersonaje();

}else if (estado==2){
//perdio
pantallaPerdio();

}else if (estado==3){
 //gano
pantallaGano();
 
} else if (estado==4) {
//creditos
pantallacreditos()

}
}

function mousePressed(){
  if (estado==0){
//inicio
estado = 1;
iniciarJuego();

}else if (estado==1){  
 //jugando
 
}else if (estado==2){
//perdio
estado = 0;
contador = 0;

}else if (estado==3){
 //gano
estado = 4;
 contador = 0;
} else if (estado==4) {
//creditos
estado=0;
}
  

  
}  
