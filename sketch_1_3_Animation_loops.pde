int x;
int y;

void setup(){ // first method exceuted, only once
 size(500,500);
 ///frameRate(2); // two iterations per second 
  x = 50;
  y = 50;
}

void draw(){ // method repeated, draw loop, called 60 times per sec
 // fill(random(255),random(255),random(255));
 // ellipse(random(500),random(500),100,100);

  ellipse(x, y, 100, 100);
  x =+ 1;
  y =+ 1;
}
