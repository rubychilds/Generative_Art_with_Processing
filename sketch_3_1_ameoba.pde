int n;
float rate;
float min_rad;
float max_rad;
float trate;

void setup(){
 size(800,800);
 n = 120;
 min_rad = -100; // negative - goes across origin
 max_rad = 800;
 rate = 0.1;
 trate = 0.01;
 background(255);
}

void refreshScreen(float alpha)
{
 fill(255, alpha);
rect(0,0,width,height); 
}

void draw(){
  refreshScreen(10);
  fill(100,0,0,3);
  stroke(0,50);

  beginShape();
  
  for(int i=0; i < n; i++){
     float ang = map(i, 0, n, 0, TWO_PI);
     float rad = map(noise(rate*i,trate*frameCount),0,1,min_rad,max_rad);
     float x = width/2 + rad*cos(ang);
     float y = height/2 + rad*sin(ang);
    curveVertex(x,y); 
  }
  
 endShape(CLOSE); 
  
}
