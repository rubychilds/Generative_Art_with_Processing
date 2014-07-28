// 4 numbers, rgba
// 3 no's: rgb , alpha will be maxed
// 2: greycalse with alpha
// 1: greyscale
// 0->255, 0 is la ck of colour in that channel, 255 max

size(500,500);

// background
background(0);


fill(255,0,0);
// can specify no fill and noStroke
stroke(0,255,0); // fills lines outside of shape
strokeWeight(8); // thickness of stroke
ellipse(250,250,200,200); // fills default white with no colour specified
// tool menue -> colour selector, can copy and paste rgba

// do not have to call these stroke, fill all the time.
// colours are set until redefined

fill(90,90,200, 100); // uses alpha to add transparency
rect(260,250,150,200); // will still keep stroke
// alpha -> sets to 255 completely opaque
textSize(50);
text("hello world",40,40);



