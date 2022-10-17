import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class the_chaos_game extends PApplet {

float x = 300;
float y = 339;
int w = 0;
public void setup() {
  background(0);
  
}

public void draw() {
  noCursor();
  strokeWeight(0);
  for (int i = 0; i < 10; i++) {
    fill(255);
    ellipse(x, y, 2, 2);
    w = PApplet.parseInt(random(3));
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
  public void settings() {  size(600, 533, P2D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "the_chaos_game" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
