// Matthew Halliday 19/09/17 \\
// Creating a blurred image \\
// Used for entertainment as a guessing game \\

// Imports \\
PImage img;
PImage img1;
int blobSize = 16;


// Function (setting up canvas and loading image to the background)
void setup() {
  size(800,517);
  img1=loadImage("sunrise.png");
  img=loadImage("sunset.jpg");
  background(0);
  image(img1,0,0);
}

// Function (Setting up random pixel selection on photo)
void draw() {
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y* img.width;
  
  // Looking up the colours of the selected pixels
  img.loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);

  
  // Placing the blogs of the pixels on the black canvas
  noStroke();
  fill(r,g,b,100);
  ellipse(x,y,blobSize,blobSize);
  
}