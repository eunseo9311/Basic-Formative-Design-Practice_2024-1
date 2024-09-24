float theta = 0;

void setup() {
  size(1000, 1000, P3D); // Use P3D renderer
}

void draw() {
  background(0); // black background
  stroke(255); // white line

  // Move to the center of the window to draw the sun
  translate(width / 2, height / 2);
  fill(255, 200, 50); // yellow
  sphere(40); // sun

  // Jupiter's orbit
  pushMatrix();
  rotateX(HALF_PI - QUARTER_PI / 2); // Rotate to make the orbit slightly tilted
  rotateZ(QUARTER_PI / 2); // Additional tilt
  drawOrbit(350); // Draw orbit
  rotateY(theta * 0.084);
  translate(350, 0, 0); // distance from sun
  fill(255, 239, 213); // cream color
  sphere(70); // Jupiter

  // Jupiter's moons
  pushMatrix();
  rotateY(theta * 4);
  translate(80, 0, 0); // Distance from Jupiter
  fill(255, 255, 0); // yellow
  sphere(10); // Io
  popMatrix();

  pushMatrix();
  rotateY(theta * 3);
  translate(120, 0, 0); // Distance from Jupiter
  fill(173, 216, 230); // light blue
  sphere(8); // Europa
  popMatrix();

  pushMatrix();
  rotateY(theta * 2);
  translate(160, 0, 0); // Distance from Jupiter
  fill(192, 192, 192); // silver
  sphere(12); // Ganymede
  popMatrix();

  pushMatrix();
  rotateY(theta * 1.5);
  translate(200, 0, 0); // Distance from Jupiter
  fill(169, 169, 169); // dark gray
  sphere(10); // Callisto
  popMatrix();

  popMatrix();

  // Saturn's orbit
  pushMatrix();
  rotateX(HALF_PI - QUARTER_PI / 2); // Rotate to make the orbit slightly tilted
  rotateZ(QUARTER_PI / 2); // Additional tilt
  drawOrbit(450); // Draw orbit
  rotateY(theta * 0.034);
  translate(450, 0, 0); // distance from sun
  fill(210, 180, 140); // light ocher color
  sphere(60); // Saturn

  // Saturn's moons
  pushMatrix();
  rotateY(theta * 3);
  translate(80, 0, 0); // Distance from Saturn
  fill(255, 255, 255); // white
  sphere(10); // Mimas
  popMatrix();

  pushMatrix();
  rotateY(theta * 2);
  translate(120, 0, 0); // Distance from Saturn
  fill(220, 220, 220); // light gray
  sphere(12); // Enceladus
  popMatrix();

  pushMatrix();
  rotateY(theta * 1.5);
  translate(160, 0, 0); // Distance from Saturn
  fill(255, 165, 0); // orange
  sphere(14); // Titan
  popMatrix();

  pushMatrix();
  rotateY(theta * 1);
  translate(200, 0, 0); // Distance from Saturn
  fill(169, 169, 169); // gray
  sphere(10); // Rhea
  popMatrix();

  // Saturn's rings
  pushMatrix();
  rotateX(HALF_PI);
  stroke(255); // white ring
  noFill();
  ellipse(0, 0, 140, 140); // ring
  popMatrix();

  popMatrix();

  // Mars' orbit
  pushMatrix();
  rotateX(HALF_PI - QUARTER_PI / 2); // Rotate to make the orbit slightly tilted
  rotateZ(QUARTER_PI / 2); // Additional tilt
  drawOrbit(250); // Draw orbit
  rotateY(theta * 0.53);
  translate(250, 0, 0); // distance from sun
  fill(255, 99, 71); // bright red
  sphere(28); // Mars
  popMatrix();

  // Earth's orbit
  pushMatrix();
  rotateX(HALF_PI - QUARTER_PI / 2); // Rotate to make the orbit slightly tilted
  rotateZ(QUARTER_PI / 2); // Additional tilt
  drawOrbit(200); // Draw orbit
  rotateY(theta);
  translate(200, 0, 0); // distance from sun
  fill(135, 206, 250); // light blue
  sphere(32); // Earth

  // Moon
  pushMatrix();
  rotateY(-theta * 4);
  translate(36, 0, 0); // Distance from Earth
  fill(192, 192, 192); // light gray
  sphere(12); // Moon
  popMatrix();
  popMatrix();

  // Venus' orbit
  pushMatrix();
  rotateX(HALF_PI - QUARTER_PI / 2); // Rotate to make the orbit slightly tilted
  rotateZ(QUARTER_PI / 2); // Additional tilt
  drawOrbit(150); // Draw orbit
  rotateY(theta * 1.62);
  translate(150, 0, 0); // distance from sun
  fill(255, 204, 153); // light orange
  sphere(30); // Venus
  popMatrix();

  // Mercury's orbit
  pushMatrix();
  rotateX(HALF_PI - QUARTER_PI / 2); // Rotate to make the orbit slightly tilted
  rotateZ(QUARTER_PI / 2); // Additional tilt
  drawOrbit(100); // Draw orbit
  rotateY(theta * 4.15);
  translate(100, 0, 0); // distance from sun
  fill(200, 200, 200); // light gray
  sphere(15); // Mercury
  popMatrix();

  theta += 0.01;
}

// Orbit drawing function
void drawOrbit(float distance) {
  noFill();
  stroke(255, 100); // Semi-transparent white for orbits
  ellipse(0, 0, distance * 2, distance * 2);
}
