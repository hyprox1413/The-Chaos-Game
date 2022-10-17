float x = 300;
float y = 339;
int w = 0;
void setup() {
  background(0);
  size(600, 533, P2D);
}

void draw() {
  noCursor();
  strokeWeight(0);
  for (int i = 0; i < 10; i++) {
    fill(255);
    ellipse(x, y, 2, 2);
    w = int(random(3));
    if (w == 0) {
      x += ((300 - x) / 2);
      y += ((50 - y) / 2);
    }
    if (w == 1) {
      x += ((50 - x) / 2);
      y += ((483 - y) / 2);
    }
    if (w == 2) {
      x += ((550 - x) / 2);
      y += ((483 - y) / 2);
    }
  }
}
