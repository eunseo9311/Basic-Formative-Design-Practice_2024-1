

Zoog[] zoogies = new Zoog[200];

void setup() {
  size(600, 400);
  for (int i = 0; i < zoogies.length; i ++ ) {
    zoogies[i] = new Zoog(random(width),random(height),30,30,8);
  }
}

void draw() {
  background(255); // Draw a black background
  for (int i = 0; i < zoogies.length; i ++ ) {
    zoogies[i].display();
    zoogies[i].jiggle();
  }
}
