float x1, x2, x3,x4, y1, y2, y3, y4;

void setup(){
  size(1200,800);
  background(255);
  noFill();
  strokeWeight(1);
}


void draw(){
  stroke(0,100,0,20);
  
  x1 = map(noise(0.005*frameCount+5),0,1,0,width);
  x2 = map(noise(0.005*frameCount+10),0,1,0,width);
  x3 = map(noise(0.005*frameCount+15),0,1,0,width);
  x4 = map(noise(0.005*frameCount+20),0,1,0,width);

  y1 = map(noise(0.005*frameCount+5),0,1,0,height);
  y2 = map(noise(0.005*frameCount+10),0,1,0,height);
  y3 = map(noise(0.005*frameCount+20),0,1,0,height);
  y4 = map(noise(0.005*frameCount+25),0,1,0,height);
  
  bezier(x1,y1,x2,y2,x3,y3,x4,y4);
  
  stroke(0,0,100,20);
  
  x1 = map(noise(0.005*frameCount+55),0,1,0,width);
  x2 = map(noise(0.005*frameCount+60),0,1,0,width);
  x3 = map(noise(0.005*frameCount+65),0,1,0,width);
  x4 = map(noise(0.005*frameCount+70),0,1,0,width);

  y1 = map(noise(0.005*frameCount+65),0,1,0,height);
  y2 = map(noise(0.005*frameCount+70),0,1,0,height);
  y3 = map(noise(0.005*frameCount+75),0,1,0,height);
  y4 = map(noise(0.005*frameCount+80),0,1,0,height);
  
  bezier(x1,y1,x2,y2,x3,y3,x4,y4);
  
  
  
  /* Show where the endpoints or curve are and control points
  stroke(0,0,255);
  ellipse(x2,y2,10,10);
  ellipse(x3,y3,10,10);
  
  stroke(255,0,0);
  ellipse(x4,y4,10,10);
  ellipse(x1,y1,10,10);
  */
}
