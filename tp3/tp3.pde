//85172/4//
//Lucero Maximiliano// TP3//
//VIDEO EXPLICATIVO DE MI TRABAJO: https://youtu.be/aHilOoMZkrI


int pantalla =0;
String[] textos;
PImage[] imgFondos;
boolean DEBUG =false;

void setup() {
  size (600, 600);
  textos = loadStrings("data/textos.txt");
 imgFondos = new PImage[20];
 for( int i=0 ; i<=19 ; i++) {
 imgFondos[i] =loadImage("fondodepantalla" +nf(i,2)+".png");
 }
}

void draw () {
  //pantalla romeo y julieta y creditos
  if (pantalla == 0) { 
   image(imgFondos[0],0,0,600,600); 
   maxito(180,370,280,50);  // romeo y julieta
    maxito(180,450,280,50); //creditos
    muestraRelato(textos[0],30,240,170);
    muestraRelato(textos[1],30,320,170);
  
    
    //pantalla En verona, una ciudad...
    } else if (pantalla ==1) {
    image(imgFondos[1],0,0,600,600);
   muestraRelato(textos[3],30,270,100);
 
    
    //Pantalla que hizo romeo  para no ser reconocido
  } else if (pantalla == 2) {
  image(imgFondos[2],0,0,600,600);
    maxito(450,525,100,50);  //opcion a
    maxito(270,525,100,50); //opcion b
    maxito(70,525,100,50); //opcion c
    muestraRelato(textos[4],30,20,300);
    muestraRelato(textos[7],35,400,-30); //opcion a
    muestraRelato(textos[6],35,400,170); //opcion b
    muestraRelato(textos[5],35,400,350); //opcion c

 //se puso una peluca.. opcion A
} else if (pantalla == 3) {
    image(imgFondos[3],0,0,600,600);
    muestraRelato(textos[8],30,300,150);
     
    //pero viene el padre de julieta... opcion A
  } else if (pantalla == 4) {
   image(imgFondos[4],0,0,600,600);
    maxito(455,525,100,50);
    muestraRelato(textos[9],40,-10,-5);
    muestraRelato(textos[10],30,400,350);
   
  
 //se vistio como mujer, va hasta... opcion B
} else if (pantalla == 5) {
   image(imgFondos[5],0,0,600,600);
    muestraRelato(textos[11],30,370,5);
    
    //Julieta acepta el trago... opcion B
  } else if (pantalla == 6) {
   image(imgFondos[6],0,0,600,600);
    muestraRelato(textos[12],30,300,80);
   
    //intentan escapar por el tejado.. opcion B
  } else if (pantalla == 7) {
   image(imgFondos[7],0,0,600,600);
   muestraRelato(textos[13],30,-20,150);
  
   //julieta sentia mucha culpa.. opcion B
  } else if (pantalla == 8) {
   image(imgFondos[8],0,0,600,600);
    muestraRelato(textos[14],17,-50,290); 
    
   //al otro dia se despierta romeo... opcion B 
} else if (pantalla == 9) {
    image(imgFondos[9],0,0,600,600);
     maxito(450,500,100,50);
    muestraRelato(textos[15],27,280,25);
    muestraRelato(textos[16],30,370,350);
   
   //se puso una mascara... opcion C
} else if (pantalla == 10) {
   image(imgFondos[10],0,0,600,600);
    muestraRelato(textos[17],19,20,270);
   
    //lo hacia a un sabiendo... opcion c 
  } else if (pantalla == 11) {
   image(imgFondos[11],0,0,600,600);
    muestraRelato(textos[18],18,100,25);
    
   //al poco tiempo... opcion C  
  } else if (pantalla == 12) {
    image(imgFondos[12],0,0,600,600);
    muestraRelato(textos[19],19,200,25);
    
    //Fray lorenzo habia acordado... Opcion C
  } else if (pantalla == 13) {
   image(imgFondos[14],0,0,600,600);
    muestraRelato(textos[20],19,100,265);
   
    //No soporto asi que dicidio...
  } else if (pantalla == 14) {
    image(imgFondos[14],0,0,600,600);
    muestraRelato(textos[21],30,300,120);
    
   //cuando julieta se desperto... opcion c 
  } else if (pantalla == 15) {
    image(imgFondos[15],0,0,600,600);
    muestraRelato(textos[22],30,55,250);
    
   //las familias encontraron los cuerpos... opcion c 
  } else if (pantalla == 16) {
   image(imgFondos[16],0,0,600,600);
    muestraRelato(textos[23],30,365,265);
    
    //en ese momento por fin entendieron... opcion c
  } else if (pantalla == 17) {
   image(imgFondos[17],0,0,600,600);
    maxito(350,500,130,50);
    muestraRelato(textos[24],20,-85,300);
    muestraRelato(textos[25],30,365,265);
  
 //creditos
  }else if (pantalla==18){
     image(imgFondos[18],0,0,600,600);
    textSize(20);
    fill(25,0,0);
    text(" Produccion Lucero Maximiliano",70,90); 
    text(" Programacion Lucero Maximiliano",80,120);
    text(" Artista Lucero Maximiliano",90,150);
    maxito(435,520,130,50);
    muestraRelato(textos[10],30,390,340);
}
 if (DEBUG) {
        fill(255, 0, 0);
        text(pantalla, 30, 40);}

  }

  void mousePressed() {
    if (pantalla==0) {
   if(botton(180,370,280,50) ){
   pantalla=1;}
     if(botton(180,450,280,50) ){ 
     pantalla=18;}
     } 
    else if (pantalla==1) {
      pantalla=2;
     
    } 
    else if (pantalla==2) {
  
      if(botton(450,525,100,50) ){ //opcion a
      pantalla=3;}
      if(botton(270,525,100,50) ){ //opcion b
        pantalla=5;}
    if (botton(70,525,100,50) ) {  //opcion c 
       pantalla=10; }
    
     
    } 
    else if (pantalla==3) {
       pantalla=4;
    }
   
    else if (pantalla==4) {

     if(botton(455,525,100,50)){
     pantalla=2;}
   
     
     
     }
    else if (pantalla==5) {
        pantalla=6;
    }
    else if (pantalla==6) {
        pantalla=7;
    }
  
   
  
    else if (pantalla==7) {
      pantalla=8;
    
    } 
    else if (pantalla==8) {
     pantalla=9;
   
  
    }
    
    else if (pantalla==9) {
    if(botton(450,500,100,50) ){
      pantalla=2;}
    
    }
    
    
    else if (pantalla==10) {

      pantalla= 11;
    }
    else if (pantalla==11) {

      pantalla=12;
    }
    else if (pantalla==12) {

      pantalla= 13;
    }
    else if (pantalla==13) {
     
       pantalla=14;
      
    }
    else if (pantalla==14) {
    
      pantalla=15;
      
     
    } 
    else if (pantalla==15) {
     
     pantalla=16;
      
    }
    else if (pantalla==16) {
    pantalla=17;
   
}
 else if(pantalla==17){
  if(botton(350,500,130,50) ) {
   pantalla=0; }
 
 }
 else if(pantalla==18){
 if(botton(320,500,260,50)  ){
   pantalla=0;}

 }

 }
 
 
 
     
   
