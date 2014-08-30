

PVector p1, p2, q1, q2;

void setup(){
  
  size(800,800);
  background(0);
  
  p1 = new PVector(random(width), random(height));
  q1 = new PVector(random(width), random(height));
  
  p2 = new PVector(random(width), random(height));
  q2 = new PVector(random(width), random(height));
  
  //line(p1.x, p1.y, p2.x, p2.y);
  //line(q1.x, q1.y, q2.x, q2.y);
  
  stroke( random(0,255), random(0,255), random(0,255), 30);

}
void draw(){
  background(0);
  
  int n = 1000;
  
  float nrate = map(mouseX, 0, width, 0, 0.1);
  int margin = (int)map(mouseY, 0, height, 0, 100);
     
  for (int i = 0; i < n; i++){

    float t = map( i, 0, n, 0, 1); 
    
    PVector p = PVector.lerp( p1, p2, t);
    PVector q = PVector.lerp( q1, q2, t);
    
    p.x += map(noise(nrate*i), 0,1, -margin, margin);
    p.y += map(noise(nrate*i+5), 0,1, -margin, margin);
    q.x += map(noise(nrate*i+10), 0,1, -margin, margin);
    q.y += map(noise(nrate*i+15), 0,1, -margin, margin);
    
    line(p.x, p.y, q.x, q.y);
  
  }
}

void keyPressed(){
 if(key == ' ')
   setup();
}
