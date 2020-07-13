// Flocking
// Daniel Shiffman
// https://thecodingtrain.com/CodingChallenges/124-flocking-boids.html
// https://youtu.be/mhjuuHl6qHM
// https://editor.p5js.org/codingtrain/sketches/ry4XZ8OkN

Boid[] flock;

float alignValue = 0.5;
float cohesionValue = 0.5;
float seperationValue = 0.5;

void setup() {
  //size(900, 900, OPENGL);
  fullScreen(OPENGL);
  noCursor();
  frameRate(60);
  int n = 500;
  flock = new Boid[n];
  for (int i = 0; i < n; i++) {
    flock[i] = new Boid();
  }
}

void draw() {
  background(0);
  for (Boid boid: flock) {
    boid.edges();
    boid.flock(flock);
    boid.update();
    boid.show();
  }
}