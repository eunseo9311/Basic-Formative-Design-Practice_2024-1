//
import processing.video.*;
Movie movie;

void setup() {
  size(200, 200);
  movie = new Movie(this, "cat.mov");
  movie.play();
}
void movieEvent(Movie movie) {
  movie.read();
}

void draw() {
  image(movie, 0, 0);
}