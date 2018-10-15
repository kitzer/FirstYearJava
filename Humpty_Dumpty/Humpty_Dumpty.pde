int numFrames = 5; // The number of animation frames
int frame = 0; // The frame to display
PImage[] images = new PImage[numFrames]; //Image array

void setup() 
{
size(500, 500);
frameRate(1);
images[0] = loadImage("1.PNG");
images[1] = loadImage("2.PNG");
images[2] = loadImage("3.PNG");
images[3] = loadImage("4.PNG");
images[4] = loadImage("5.PNG");
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