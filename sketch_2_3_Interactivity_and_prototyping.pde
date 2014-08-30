import java.awt.Point;

ArrayList<Point> points= new ArrayList<Point>() ;

float offX, offY;
color col;

void setup(){
  size(500,500);
   background(0);
   col = color(255,255,255);
  offX = 0;
  offY = 0;
}

void draw(){
  fill(col);
  //ellipse(mouseX, mouseY,100,100); // keywords
  background(0);
  beginShape();
  for(int i = 0; i < points.size(); i++ ){
    Point current = points.get(i);
    vertex(offX + (float) current.getX(), offY + (float) current.getY());
  }
  endShape();
}

void mousePressed(){
  points.add( new Point(mouseX, mouseY));
}

void mouseDragged(){
  offX += (mouseX - pmouseX);
  offY += (mouseY - pmouseY);
}

void keyPressed(){
  if(key == 'a')
    col = color(random(255),random(255), random(255));
   else if (key == 'b')
     col = color(255,255,255);
   else if (keyCode == ENTER)
    col = color(0,0,10);
}

