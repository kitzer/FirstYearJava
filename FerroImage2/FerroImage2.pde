PImage ferro;

void setup() {
 size(800, 500);
 ferro = loadImage("FerroImage1.png");
 background(0);

}

void draw() {
  for (int i = 0; i < 100; i++) {
  float x = random(width);
  float y = random(height);
  color c = ferro.get(int(x),int(y));
  fill(c, 25);
  noStroke();
  ellipse(x, y,16,16); 
  }
}