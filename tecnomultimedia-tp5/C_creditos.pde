class Creditos{
  PImage img5;
  
  Creditos(){
    
    img5=loadImage("creditos.png");
  }
  void dibujarCred(){
    
    image(img5,0,0);
    pushStyle();
         
    textSize(30);
    text("CREDITOS",250,100);
    textAlign(CENTER,CENTER);
    popStyle();
   text("VISUAL",50,200);
   text("Tomas Rojas",250,200);
   text("PROGRAMACION",50,250);
   text("Tomas Rojas",250,250);
   text("Maximiliano Daniel Lucero",250,270);
    
  }
}
