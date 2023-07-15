void muestraRelato(String texto_,int tamanio,int altura,int pedasodenashe) {
  push();
  fill (25,0,0);
  textSize(tamanio);
  textLeading(30);
  textAlign(CENTER, CENTER);
  text (texto_, pedasodenashe, altura, 300, 300);
  pop();
}
 void maxito(int a,int y, int largo, int ancho){
  fill(0,0,0,50); 
  rect(a,y,largo,ancho);}
  
boolean botton(int ejeX, int ejeY, int largoX, int anchoY){
   
    if(mouseX>ejeX && mouseX<ejeX+largoX && mouseY>ejeY && mouseY<ejeY+anchoY){
      return true;}
      
      else{ return false;
      }
  }
  
