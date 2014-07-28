size(500,500);

float x= random(50,100); // default lower is 0, always returns float
// convert to int
int y = (int) x;
println(x);
println(y); // goes to lower, rounds down, not up. Use ceil otherwise

// Bezier curves - 4 points, one beg, end and two control points for curvature
for( int i = 0; i < 5; i++){ 
  float x1 = random(500);
  float y1 = random(500);
  
  float x2 = random(500);
  float y2 = random(500);
  
  float x3 = random(500);
  float y3 = random(500);
  
  float x4 = random(500);
  float y4 = random(500);
  
  noFill();
  strokeWeight(5);
  bezier(x1,y1,x2,y2,x3,y3,x4,y4); // x1,y1,x2,y2,x3,y3,x4,y4 <- x2,x3 control points
}
