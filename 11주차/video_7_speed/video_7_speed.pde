
// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

 //The user can control the playback speed of a movie with the mouse. 
//speed() takes one argument and multiplies the movie playback rate by 
// that value. Multiplying by 0.5 will cause the movie to play half as fast, 
// by 2, twice as fast, by -2, twice as fast in reverse, and so on. 
//(Note that not all video formats support backwards playback. 
//For example, the theora codec does support backward playback, 
//but not so the H264 codec, at least in its current version.)
import processing.video.*;

Movie movie;

void setup() {
  size(320, 240);
   //frameRate(30);
  movie = new Movie(this, "cat.mov");

  movie.loop();
}

void draw() {
if (movie.available()){
   movie.speed(0.5);
  // Read frame
  movie.read(); 
  // Display frame
  image(movie, 0, 0);
}
}

  


