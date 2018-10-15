import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Minim Libarys, Declaring song 1 -4
Minim minim;
AudioPlayer song1;
AudioPlayer song2;
AudioPlayer song3;
AudioPlayer song4;

// Setting up size and loading the songs
void setup() {
  size(200,200); 
  minim = new Minim(this);
 
  song1 = minim.loadFile("song1.mp3");
  song2 = minim.loadFile("song2.mp3");
  song3 = minim.loadFile("song3.mp3");
  song4 = minim.loadFile("song4.mp3");
}
//Drawing the 4 colour sqears 
void draw() {
  //RED Sqare
  fill(255, 0, 0);
  rect(0,0,100,100);
 
  //Green Square
  fill(0,255,0);
  rect(100,0,100,100);

  
  //Blue Square
  fill(0,0,255);
  rect(0, 100, 100, 100);
  
  
  //purple Square
  fill(176,23,132);
  rect(100, 100, 100, 100);
  

  
}


// When mouse clciked it will play and pause songs.
void mouseClicked() {
  
   {
  
    // RED
  if (mouseX >0 && mouseX<100 && mouseY >0 && mouseY<100){
    song2.pause();
    song3.pause();
    song4.pause();
    song1.play();
  }
  
    // GREEN
  if (mouseX >100 && mouseX<200 && mouseY >0 && mouseY<100){
    song1.pause();
    song3.pause();
    song4.pause();
    song2.play();

  }
  
  // BLUE
  if (mouseX >0 && mouseX<100 && mouseY >100 && mouseY<200){
    song2.pause();
    song1.pause();
    song4.pause();
    song3.play();
  }
  
  // PURPLE
  if (mouseX >100 && mouseX<200 && mouseY >100 && mouseY<200){
    song2.pause();
    song3.pause();
    song1.pause();
    song4.play();
  }

  }
}