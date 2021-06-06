/*MAXIMILIANO 
  LUCERO*/
//LEGAJO:85172/4 //

import ddf.minim.*;
Minim minim;
AudioPlayer player;
PImage img;
 PFont font1;
 PFont font2;
 int x=600;
 int cambio=0;
 int y=0;

void setup(){
 
  size (600,600);
  font1 = loadFont("SEGA-48.vlw");
  textFont(font1);
  font2 = loadFont("SonicComics-48.vlw");
  img= loadImage("inicio.png");
  minim = new Minim(this);
  player=minim.loadFile("musica.mp3");
  player.play();
}
void draw(){
  
  image(img,0,0);
  stroke(255);
  textSize(50);
  text("SEGA",x, 590);
  textSize(12);
  text("TM" ,x+150,550);
  textSize(15);
 if (x<40){x=40;}

 { x--;}
 cambio++;
   if (cambio>600){img=loadImage("final.png");
   }
   if (cambio>600){x=1000;
   textFont(font2,15);
   text("PROJECT MANAGER",130,50 +y);
   textSize(30);
  text(" HISASHI SUZUKI " ,55,100 +y);
  text("SHINOBU TOYODA" ,55,150 +y); 
  text("MASAHARU YOSHI", 55,200 +y);
  textFont(font2,15);
  text("PRODUCER", 130,230 +y);
  textSize(30);
  text("HIROKAZU YASUHARA",55,280 +y);
  textFont(font2,15);
  text("SENIOR GAME DESIGNERS", 130,320 +y);
  textSize(30);
  text("HISAYOSHI YOSHIDA", 55,370 +y);
  text("TAKASHI LIZUKA" , 55,410 +y);
  textFont(font2,15);
  text("LEAD PROGRAMMER", 130,450 +y);
  textSize(30);
  text("YUJI NAKA",55,500 +y);
  textFont(font2,15);
  text("ARTIST", 135,530 +y);
  textSize(30);
  text("KUNITAKE AOKI",55,570 +y);
  textFont(font2,15);
  text("ANIMATOR",130,600 +y);
  textSize(30);
  text("TAKASHI THOMAS YUDA", 55,640 +y);
  textFont(font2,15);
  text("SCENE ARTIST",130,680 +y);
  textSize(30);
  text("KUNITAKE AOKI" ,55,720 +y);
  text("CHIE YOSHIDA", 55,760 +y);
  text("TSUNEKO AOKI", 55,800 +y);
  text("SHIGERU OKADA", 55,840 +y);
  textFont(font2,15);
  text("ART ASSITANT" ,130,880 +y);
  textSize (30);
  text("OSAMU OHASHI",55,920 +y);
  textFont(font2,15);
  text("MUSIC COMPOSERS",130,960 +y);
  textSize(30);
  text("BRAD BUXER",55,1000 +y);
  text("BOBBY BROOKS", 55,1040 +y);
  text("DARRYL ROSS",55,1080 +y);
  text("GEOFF GRACE",55,1120 +y);
  text("DOUG GRIGSBY", 55,1160 +y);
  text("SCIROCCO", 55,1190 +y);
  textFont(font2,15);
  text("SEGA SOUND TEAM",130,1215 +y);
  textSize(30);
  text("SACHIO OGAWA", 55,1260 +y);
  text("MASARU SETSUMARU",55,1300 +y);
  text("TATSUYUKI MAEDA", 55,1340 +y);
  textFont(font2,15);
  text("SPECIAL THANKS", 130, 1380 +y);
  textSize(30);
  text("DEBORAH MCCRACKEN",55,1420 +y);
  text("EMI KAWAMURA", 55,1460 +y);
  text("JINA ISHIWATARI",55,1500 +y);
  textFont(font2,15);
  text("PRESENTED BY", 130, 1540 +y);
  textSize(40);
  text("SEGA", 130,1580 +y);
  y--;
 }
}
