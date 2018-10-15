import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import ddf.minim.*;
 
Minim minim;
AudioPlayer song;
 
void setup()
{
  size(100, 100);

}

 void mousePressed() {
   
  minim = new Minim(this);
 
  // this loads mysong.wav from the data folder
  song = minim.loadFile("mysound.wav");
  song.play();
 }
 
void draw()
{
  background(244, 19, 233);
}