//Maximiliano Lucero// Legajo 85172/4. // //COMISION 3 //

PImage img;

void setup(){
  
size(800,400);
img  = loadImage("retrato.jpeg");

}
void draw(){
  image(img,0,0);
  fill(255,229,204);
  
  //remera
  
pushStyle(); 
fill(0,0,0);
rect(490,290,220,220,300);
popStyle();

 //cuello
 
 rect(550,200,100,130,70);

  //orejas
  
ellipse(500,180,65,65);
ellipse(700,180,65,65);

//cabeza

rect(500,50,200,250,70);

//ojos

fill(255);
ellipse(550,170,65,55);
ellipse(650,170,65,55);
fill(0);

//pupilas

ellipse(550,170,30,30);
ellipse(650,170,30,30);
noFill();

//boca

line(650,250,550,250); 


//nariz

pushStyle();
fill(32,32,32);
ellipse(610,220,5,5);
ellipse(580,220,5,5);
popStyle();

//pelo

pushStyle();
strokeWeight(59);
line(659,80,540,80);
popStyle();

  
}
