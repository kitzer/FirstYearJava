PImage ferro;

void setup() {
 size(800, 500);
 ferro = loadImage("FerroImage1.png"); 
 
}

void draw() {
 //image(ferro, 0, 0); 
    loadPixels();
    ferro.loadPixels();
    for (int x = 0; x < width; x++) {
      for (int y = 0; y < height; y++) {
        int loc = x+y*width;
        float b = brightness(ferro.pixels[loc]);
        float d = dist(mouseX, mouseY, x,y);
        float factor = map(d, 0, 200, 2, 0);
        
        // Makeing background black and making the fluid pink
        if (b > 100) {
          pixels[loc] = color(255*factor, 0*factor, 90*factor);
        } else {
          pixels[loc] = color(0);
        }
        
      } 
    }
    updatePixels();
    
   //saveFrame("SavedIMG/image_####");
}


/* FLASH LIGHT
        float r = red(ferro.pixels[loc]);
        float g = green(ferro.pixels[loc]);
        float b = blue(ferro.pixels[loc]);
        float d = dist(mouseX, mouseY, x,y);
        float factor = map(d, 0, 200, 2, 0);
        pixels[loc] = color(r*factor, g*factor , b*factor);

*/


/*
        if (x > 200) {
      pixels[loc] = color(g*2, r/6, b/4);
        } else {
      pixels[loc] = color(r,g,b);
          
        }
        
*/