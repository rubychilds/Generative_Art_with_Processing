void setup(){
  size(1000,500);
  background(255);

  for (int i = 0; i < 8; i++){ 
    drawHouse(50 + 120*i,50);
  }
}

void drawHouse(int offsetX, int offsetY){
  pushMatrix();
  translate(offsetX, offsetY);
  triangle(0,50,50,0,100,50); // roof
  rect(15,50,70,100); // house
  rect(30,110,15,40); // door
  rect(55,60,25,15); // window
  popMatrix(); // reset coordinate system - more predictable calls
}
