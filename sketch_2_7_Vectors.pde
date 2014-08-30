size(500,500);
background(255);

PVector p1 = new PVector(100,300); // 2/3 numbers according to dim
PVector p2 = new PVector(225,75);

noStroke();

fill(255,0,0);
ellipse(p1.x,p1.y,200,200);

fill(0,0,255);
ellipse(p2.x,p2.y,100,100);

p1.add(p2); // changes p1

p1.mult(0.2);
fill(0,255,0);
ellipse(p1.x,p1.y,110,90);


