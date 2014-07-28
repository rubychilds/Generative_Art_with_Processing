//// map() remaps values onto one range to another. 5 values, one original input, then start1, sto1 of old range then new range
//size(500,500);
//float x1 = 30; // 0-100
//float x2 = map(x1, 0, 100, 0,500);
//ellipse(x2,250,100,100);
//// can use this to map temperatures
//float f = 98.6;
//float c = map(f,32,212,0,100);
//println(c);
//
//// LERP - interpolate start,stop -> range of values, amount -> 0 < float < 1
//float x = lerp(0,500,0.5);
//ellipse(x,250,100,100);

// DRAWING LINE WITH POINTS
//size(500,500);
//float x1 = 50;
//float y1 = 50;
//float x2 = 450;
//float y2 = 450;
//
//line(x1,y1,x2,y2);
//
//for(int i = 0; i < 10; i++){
//   float x = lerp(x1,x2,i/10.0); 
//   float y = lerp(y1,y2,i/10.0); 
//   ellipse(x,y,10,10);
//}

float x;

void setup(){
  size(500,500);
  x = 0;  
}

void draw(){
   background(0);
   x =lerp(x, 450, 0.05); // redraws from left to right. Slows down as reset x -> easing
   ellipse(x,250,100,100); 
}



