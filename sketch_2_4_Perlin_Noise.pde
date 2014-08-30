void setup(){
  size(1200,500);
}

void draw(){
  
  float x_offset = 0.0;
  float increment = map(mouseX, 0, width, 0, 1);
  
  background(255);
  
  // Noise - more predictability - stays same each frame
  // doesn't change every frame - initialised at start of programme
  beginShape();
  for(int i =0; i < width; i++){
     vertex(i, (height/2)*noise(x_offset));
     x_offset += increment; // noise at small values have similar values, noise(5) and noise(5.001) have similar values
  }
  endShape();
  
  // Random use - reinitislised every time
  beginShape();
  for(int i=0; i < width; i++){
    vertex(i, height/2 + random(height/2));
     
  }  
  endShape();

}
