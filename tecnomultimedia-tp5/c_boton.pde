

class Boton {
  float x, y, ancho, alto;
  String label;

  Boton(String label_, float x_, float y_, float ancho_, float alto_) {
    x=x_;
    y=y_;
    ancho= ancho_;
    alto= alto_;
    label = label_;
  }

  void actualizar() {
    dibujar();
  }
  void dibujar() {
    
    pushStyle();
    pushMatrix();
    translate(x,y);     
    fill(100,200,100); 
    stroke(255);
    strokeWeight(2);
    rectMode(CENTER);
    rect(0,0,ancho,alto,5);
    fill(255);
    textAlign(CENTER,CENTER);
    text(label,0,0);
    
    popStyle();
    popMatrix();
    
    mouseEstaEncima();
}
boolean mouseEstaEncima(){
if (mouseX > x-ancho/2 && mouseX < x+ancho/2 && mouseY >y-alto/2 && mouseY < y+alto/2){
      return true;}
      else {return false;
  }
  
}

}
