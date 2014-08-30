void setup(){
 size(800,800);
  noStroke(); 
}

void draw(){
 background(255);
 
 float x_off = map(mouseX, 0, width, 0, 1);
 float y_off = map(mouseY, 0, height, 0, 1);
 
 for(int i =0; i < width; i+=5){
   for (int j = 0; j < height; j +=5){
     fill(map(noise(x_off*i,y_off*j),0,1 , 0, 255)); // gives grey scale value to fill
     // becomes more periodic with increase. Between 0,0-800,800 originally
     // multiplication of 0.01 now between 0-8, smaller sample field, so more natural looking
     rect(i,j,5,5); // grid of rectangles with width, height both 5
   }
 }
 
}
