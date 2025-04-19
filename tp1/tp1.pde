PImage elgato;

void setup(){
 
  size (800,400);
  background(204);
 elgato = loadImage("LE CHAT 1951 GIACOMETTI.jpg");
 
  
}

void draw(){
image(elgato, 0 , 0 , 400, 400 );
  
  println("x:");
  println(mouseX);
println("y:");
  println(mouseY);
  
  //cabeza
  noStroke();
fill(#D88F34);
 ellipse(425,125,35,55);
 ellipse(426,97,5,15);
 ellipse(434,97,5,10);
 
  //cuello
  beginShape();
  vertex(441, 114);
  vertex(478, 120);
  vertex(521, 116);
  vertex(523, 133);
  vertex(488, 135);
  vertex(440, 126);
  vertex(441, 114);
  endShape();
  
  //torso
  ellipse(524,125,30,33);
  
  
  //patas
  stroke(#D88F34);
  strokeWeight(7);
 line(513,133,500,255);
 
 rect(488,259,13,13);
 
line(524,142,550,260);
 
  rect(539,261,13,13);
  
  //cuerpo
  beginShape();
  vertex(533,113);
  vertex(614,123);
  vertex(615,133);
  vertex(587,132);
  vertex(531,138);
  vertex(533,113);
endShape();

//caderas
ellipse(629,128,30,31);
ellipse(615,136,9,9);
line(625,143,622,212);
line(621,211,605,259);
rect(593,260,13,13);
line(637,143,650,194);
line(651,195,683,244);
rect(674,248,10,19);

//cola 
strokeWeight(10);
line(643,118,702,126);
line(702,126,725,123);
line(725,123,762,89);
line(762,89,788,38);

//base
beginShape();
vertex(427,269);
vertex(631,277);
vertex(737,273);
vertex(741,334);
vertex(417,334);
vertex(427,269);
endShape();
  

  
 
  
}
