// Matthew Halliday 19/09/17
// Moving face proram
// could be used for entertainment ("Pin the eyes on the face!")


// Imports to processing \\
PImage img;


// Function (Runs once and sets the canvas)
void setup() {
 size(1080,720);
 img = loadImage  ("check_mark.png");


}

// Varible declairation \\
color bColor = color(221,223,149);       // Colour for face \\
color nColor = color(223,149,189);       // Colour for nose \\ 
color eColor = color(255);               // Colour for eye backgounrd (white) \\
color mColor = color(183,149,166);       // Color for the mouth \\
color eeColor = color(85,0,255);         // color of the movable eyes \\ 




// Function (Loops. Draws the MAIN face background.) \\
void draw(){
  // Backgound color \\
   background(128,0,0);
  
  
  // Face \\
  fill(bColor);
  ellipse(540,340,600,600);
  
  // Eye back \\
  fill(eColor);
  ellipse(420,200,80,80);
  ellipse(660,200,80,80);
  
  // Nose \\
  fill(nColor);
  rect(510,350,50,50);
  
  // Mouth \\
  fill(mColor);
  rect(410,500,300,10);
  

  // -------------------------------------------------------------------------------- \\
  // Movable eyes \\
  fill(eeColor);
  ellipse(mouseX, mouseY, 30,30);
  ellipse(mouseX+240, mouseY, 30,30);

}

void mouseClicked(){
  image (img,0,0);

  
  
}