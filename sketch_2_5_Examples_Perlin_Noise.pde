int t;

void setup(){
  size(500,500);
  t = 0;
  //fill(255);
  background(0);
}

// EXAMPLE 1
/*
void draw(){

  // noise value is set in stone at start
  // will restart when programme restarted
  // one way to change is value before t
  background(0);

  float x = map( noise(t*0.011), 0, 1, 0, width); // remove 0.01 will act more randomly. 
  float y = map( noise(t*0.013 + 5), 0, 1, 0, height); // can swap to use variable frameCount rather than t
  // always goes along the diagnoal when lines are pretty much same due to t - change parameter multiplying t and is fine
  
  ellipse( x, y, 100, 100);
  t++;  
}
*/

// EXAMPLE 2
void draw(){
  
  float x = map(noise(0.011*frameCount), 0, 1, 0, width); 
  float y = map(noise(0.011*frameCount+5), 0, 1, 0, height); 
  float w = map(noise(0.011*frameCount+10), 0, 1, 50, 200); 
  float h = map(noise(0.011*frameCount+5), 0, 1, 50, 200); 
  
  float r = map(noise(0.011*frameCount+20), 0, 1, 0, 255); 
  float g = map(noise(0.011*frameCount+25), 0, 1, 0, 255); 
  float b = map(noise(0.011*frameCount+30), 0, 1, 0, 255); 
  
  fill( r, g, b, 20);
  
  ellipse( x, y, w, h);
  
}
