size(700,700);
background(255);

int numrects = 800;
float maxWidth = 10;
float maxalpha = 50;

for(int i = 0; i < numrects; i++){
  float vertoffset = random(120);
  float x = random(width); // can replace to state width, defaults to screen size
  //float y = 20 + vertoffset;
  //float w = random(maxWidth);
  //float h = height - 2*y;
  
  float y = random(height);
  float w = (x+y)/ 10.0;
  float h = w;
  
  //float r  = random(255);
  //float g = random(255);
  float r = x / 2.0;
  float g = y / 2.5;
  
  float b = random(50,150);
  float a = random(maxalpha);
 
  fill(r,g,b,a);
  //noStroke();
  stroke(g,b,r,a); // adds definition
  strokeWeight(8);
  ellipse(x, y, w, h);
  
}
