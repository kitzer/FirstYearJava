void setup() {
 size(300,300);
 background(128);
}

void draw() {
 fill(255, 0, 0);
 ellipse(mouseX, mouseY, 30, 30);
 
 saveFrame("output/image_####.png");
}