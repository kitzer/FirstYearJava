// Matt Halliday 19/09/17
// A program that will create a shape of my choice (static shape)
// Program could be use for creating a basic mosaic

// Function (Runs just once. Sets the size of canvas)
void setup() {
  size(600,400);
  background(0,0,0);  
}


// Function (Loops. Draws the rectangle at the following x=200 y=300.)
void draw() {

  stroke(mouseX, mouseY);
  fill(mouseX, mouseY, 25,300);
  ellipse(mouseX, mouseY,50,50);
  //ellipse(50,270,50,50);
  //triangle(30,75,58,20,86,75);
  println(mouseX," ",mouseY);
  
}
