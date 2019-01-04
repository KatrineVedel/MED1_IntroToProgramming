// polar coordinate
float r = 0;
float theta = 0;

// perlin noise for the color

float time = 0.00;
float increment = 0.01;

// perlin noise for the width of the stroke

float time2 = 0.00;
float increment2 = 0.04;

// Variables for the spiral and color

float w =45;
float c = 255;


void setup() {
  size(1000, 1000);
  background(255);
  smooth();

}

void draw() {
  // polar to cartesian conversion
  float x = r * cos(theta);
  float y = r * sin(theta);
  
  // defining my variable n to be noise(time).
  float n = noise(time);
  float a = noise(time2);
  
  // here I sat my time is equal and bigger than increment both for color and width
  time += increment;
  time2 += increment2;

  // draw the ellipse at x,y
  stroke(0, 0, n*c);
  fill(0, 0, n*c);
  
  println(n*255);
  
  // draw the ellipse at x,y
  ellipse(x+width/2, y+height/2, a*w, a*w);
  
  // increment the angle
  theta += 0.01;
  // the radius should always be 0 (for the center) and be added for it gets bigger therefore a spiral
  r += 0.1;
}
