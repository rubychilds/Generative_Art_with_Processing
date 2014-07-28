
// arbitary pointed polygon
//beginShape();
//// series of vertices to correspond to shape - use vertex or curveVertex
//noStroke();
//curveVertex(50,50);
//curveVertex(80,150);
//curveVertex(130,280);
//curveVertex(330,250);
//curveVertex(300,120);
//curveVertex(350,70);
//// can repreat end poin twice to encure it goes through point
//endShape(CLOSE); // keyword close, closes polygon up - joins end and start vertex

void setup(){
  size(500,500);
}

void draw(){
// Creating a CIRCLE
float cx = 250;
float cy = 250;
float radius = 160;
int n = 24;

beginShape();

for(int i=0; i < n; i++){
  //float angle = TWO_PI * i/n;
  float angle = map(i, 0, n, 0, TWO_PI);
  float x0 = cx + radius * cos(angle);
  float y0 = cy + radius * sin(angle);
  vertex(x0 + random(20),y0 + random(20) );   // random adds noise
}

endShape(CLOSE);
}
