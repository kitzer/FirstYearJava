/** 
Notes:
==== JavaSound Minim Error ====
==== Unable to return a SourceDataLine: unsupported format - PCM_SIGNED 44100.0 Hz, 16 bit, stereo, 4 bytes/frame, little-endian

=== Minim Error ===
=== Couldn't load the file song4.mp3
**/

/**
Matt Halliday 07/03/2018
Anglo Saxon Information Board
**/

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


// Minim and picture Libarys, Declaring song 1 -4
PImage img1;
PImage img2;
PImage img3;
PImage img4;
Minim minim;
AudioPlayer song1;
AudioPlayer song2;
AudioPlayer song3;
AudioPlayer song4;



// Setting up size and loading the songs
void setup() {
  size(400,400); 
  minim = new Minim(this);
 
  song1 = minim.loadFile("song1.mp3");
  song2 = minim.loadFile("song2.mp3");
  song3 = minim.loadFile("song3.mp3");
  song4 = minim.loadFile("song4.mp3");
  
  img1 = loadImage("img1.jpg");
  img2 = loadImage("img2.jpg");
  img3 = loadImage("img3.jpg");
  img4 = loadImage("img4.jpg");

}


//Drawing the 4 colour sqears 
void draw() {
  
  // Image 1
  image(img1,0,0);
 
  // Image 2
  image(img2,200,0);

  
  // Image 3
  image(img3,0,200);
  
  
  // Image 4
  image(img4,200,200);
  
}


// When mouse clciked it will play and pause songs.
void mouseClicked() {
  
  
    // Img1
  if (mouseX >0 && mouseX<200 && mouseY >0 && mouseY<200){
    song2.pause();
    song3.pause();
    song4.pause();
    song1.play();
  }
  
    // Img2
  if (mouseX >200 && mouseX<400 && mouseY >0 && mouseY<200){
    song1.pause();
    song3.pause();
    song4.pause();
    song2.play();

  }
  
  // Img3
  if (mouseX >0 && mouseX<200 && mouseY >200 && mouseY<400){
    song1.pause();
    song2.pause();
    song4.pause();
    song3.play();
  }
  
  // Img4
  if (mouseX >200 && mouseX<400 && mouseY >200 && mouseY<400){
    song1.pause();
    song2.pause();
    song3.pause();
    song4.play();
  }

  }