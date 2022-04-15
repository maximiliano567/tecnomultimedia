int x;
void setup() {
  size(600, 600);
  colorMode(HSB,100);
  background(0);
  x=55;
}
void draw() {
  
  fill(x,99,99);
  noStroke();
  x+=1.5;
  if (x>255){
    x=0;}
  quad(200,200,270,200,400,300,270,350);
triangle(195,210,215,340,255,350);
triangle(280,355,400,310,350,400);
triangle(250,500,347,408,280,365);
quad(260,365,270,365,235,500,200,540);
triangle(355,250,435,250,405,290);

beginShape();
vertex(400,180);
vertex(440,180);
vertex(460,200);
vertex(460,220);
vertex(440,240);
vertex(350,240);
endShape(CLOSE);

beginShape();
vertex(465,200);
vertex(570,200);
vertex(465,220);
endShape(CLOSE);

beginShape();
vertex(260,120);
vertex(280,190);
vertex(345,240);
vertex(345,230);
endShape(CLOSE);

beginShape();
vertex(140,100);
vertex(250,120);
vertex(270,190);
vertex(200,190);
endShape(CLOSE);

beginShape();
vertex(290,140);
vertex(310,150);
vertex(360,210);
vertex(350,220);
endShape(CLOSE);
}
 void keyPressed(){
x=0;

}
