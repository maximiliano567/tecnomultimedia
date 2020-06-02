
float variable2;
float y = 50.0;
float velocidad = 0.1;
float radio =350.0;

PImage img;
PFont font;
void setup(){

  
  colorMode(HSB,12,12,12);
size(1024,768);
img=loadImage("imagenuno.png");
background(img);
font=loadFont("OCRAStd-48.vlw");
textFont(font);
textSize (21);
}

void draw(){
  background(img);

fill(0,12,12);
text("STAF",200, y+800,radio,radio); 
y = y - velocidad;

 fill(0,12,12);
text("MAIN PROGRAM",200, y+900,radio,radio); 
y = y - velocidad;

fill(0,0,12);
text("Yoshithaka Kabawe",200, y+950,radio,radio);
  y = y - velocidad;
  
  fill(0,12,12);
text("SUB PROGRAM",200, y+1100,radio,radio);
y = y - velocidad;

fill(0,0,12);
text("Yoshiaki Iwata",200, y+1150,radio,radio);
y = y - velocidad;

fill(0,12,12);
text("CHARACTER DESING",200, y+1250,radio,radio);
y = y - velocidad;

fill(0,0,12);
text("Yabu Chan",200, y+1300,radio,radio);
y = y - velocidad;

fill(0,12,12);
text("MUSIC",200, y+1400,radio,radio);
y = y - velocidad;

fill(0,0,12);
text("Naoki Kotaka",200, y+1450,radio,radio);
y = y - velocidad;

fill(0,12,12);
text("SOUND PROGRAM",200, y+1550,radio,radio);
y = y - velocidad;

fill(0,0,12);
text("Thago Shinichi",200, y+1600,radio,radio);
y = y - velocidad;

fill(0,12,12);
text("ESPECIAL THANKS",200, y+1650,radio,radio);
y = y - velocidad;

fill(0,0,12);
text("Masato Kawai",200, y+1700,radio,radio);
y = y - velocidad;

fill(0,0,12);
text("Noriko Chikawa",200, y+1750,radio,radio);
y = y - velocidad;

fill(0,0,12);
text("Mihoko Okazaki",200, y+1800,radio,radio);
y = y - velocidad;

fill(0,0,12);
text("Yoshinori Homma",200, y+1850,radio,radio);
y = y - velocidad;

fill(0,0,12);
text("Fhed Yarashubi",200, y+1900,radio,radio);
y = y - velocidad;

fill(0,0,12);
text("Joy Moon",200, y+1950,radio,radio);
y = y - velocidad;

fill(0,12,12);
text("PRODUCER",200, y+2100,radio,radio);
y = y - velocidad;

fill(0,0,12);
text("Kiaru Yoshida",200, y+2150,radio,radio);
y = y - velocidad;

fill(0,12,12);
text("THE END",200, y+2700,radio,radio);
y = y - velocidad;
}
