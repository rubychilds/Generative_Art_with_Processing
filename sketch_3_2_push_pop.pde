size(500,500);
background(255);

pushMatrix();
// any translations here get reset at end of block
translate(300,120);
ellipse(0,0,50,50);
popMatrix();

fill(255,0,0);
ellipse(0,0,50,50);
