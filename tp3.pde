//LINK DEL VIDEO: https://youtu.be/r0uGSzxVFpQ

//Maximiliano Lucero //
//85172/4 //


float rot;         
int h=0;         
int f=15;

void setup(){
  
  size(600,600); 
 colorMode(HSB,100); 
}
void draw(){
  
  background(h,99,99); 
  strokeWeight(2);    
h++;                 
fill(h,99,99);      
for(int i=0;i<20;i++){   
float x = map(i, 0, 20, 300, mouseX); 
float y = map(i,0,20, 300, mouseY);
float tam= map( i, 0, 20, width,0); 
float ang=map(i, 0 , 20, 2,0);
pushMatrix();
translate (x,y); 
rotate(rot +i*.05); 
rotate(ang);
rectMode(CENTER); 
rect(0,0,tam,tam);
ellipse(0,0,tam,tam); 
popMatrix();
rot+=f;  

if(h>100){ 
h=0;}}       
}
void mousePressed(){
  
  f=7;} 
 
void keyPressed(){
  
  f=15; 
}
