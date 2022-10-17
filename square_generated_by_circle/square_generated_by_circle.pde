float x = 0;
float y = 0;
int w = 0; 
int v = 6;
class Vertex {
  float x, y;
}
ArrayList<Vertex> vertices = new ArrayList<Vertex>();
void setup() {
  background(0);
  size(1000, 1000, P2D);
  for (int i = 0; i < v; i ++) {
    Vertex a = new Vertex();
    a.x = cos(i * 2 * PI / v) * 400 + 500;
    a.y = sin(i * 2 * PI / v) * 400 + 500;
    x += a.x;
    y += a.y;
    vertices.add(a);
  }
  x /= v;
  y /= v;
}

void draw() {
  noCursor();
  strokeWeight(0);
  for (Vertex a : vertices) {
    fill(255, 0, 0);
    ellipse(a.x, a.y, 10, 10);
  }
  for (int i = 0; i < 50; i++) {
    fill(255);
    ellipse(x, y, 1, 1);
    w = int(random(v));
    println(w);
    for (int j = 0; j < v; j ++) {
      if (w == j) {
        if (!(dist(x + ((vertices.get(j).x - x) / 2), y + ((vertices.get(j).y - y) / 2), 500, 500) < 100)) {
          x += ((vertices.get(j).x - x) / 2);
          y += ((vertices.get(j).y - y) / 2);
        }
      }
    }
  }
}
