int numFrames = 12; // The number of animation frames
int frame = 0; // The frame to display
PImage[] images = new PImage[numFrames]; //Image array

void setup() 
 {
 size(500, 500);
 frameRate(5);
 images[0] = loadImage("summer.png");
 images[1] = loadImage("autumn.png");
 images[2] = loadImage("winter.png");
 images[3] = loadImage("spring.png");
 }

void draw()
 {
 image(images[frame], 0, 0);
 frame++;
 if (frame == numFrames) 
 {
 frame = 0;
 }
 }