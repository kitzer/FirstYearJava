// Matt Halliday 28/11/17
// Don't click the button!
// When the user clicks the button the application will have a score that increses.

// Variables
int mouseClicks = 0;
int x1, y1;

// Function {Setting up the canvas.}
void setup() {
 size(300,300);


 
}

// Function {Creating the circle on the canvas.}
void draw(){
  background(255,255,255);
  stroke(0);
  fill(0,0,0);
  rect(150, 150, 50, 50);
  
  fill(255,0,0);
  textSize(20);
  text("Don't Press The Button", 35, 30);
  text("Number of clicks" + mouseClicks, 10, 250);  
  
}

void mousePressed() {
  //if (mouseClicks) {
    
  
 mouseClicks = mouseClicks + 1;
}