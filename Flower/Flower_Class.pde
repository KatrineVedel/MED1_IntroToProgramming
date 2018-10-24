class Flower {

   // Variables for the flower
 float r;       // radius of the flower petal

 int n_petals;  // number of petals 

 float x;       // x-position of the center of the flower

 float y;       // y-position of the center of the flower

 int petalColor;
 
 
 // Speed of the flower
 
 float xspeed = 2.8;
 float yspeed = 2.2;

// Direction of the flower

int xdirection = -1; // Left or Right
int ydirection = -2; // Top to Bottom

 
// Definition of the variables
Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor) {

  r=temp_r;

  n_petals = temp_n_petals;

  x=temp_x;

  y=temp_y;

  petalColor=temp_petalColor;

}



void display () {

  float ballX;

  float ballY;

  

  fill(petalColor);

  for (float i=0;i<PI*2;i+=2*PI/n_petals) {

//  ballX=width/2 + r*cos(i);

//  ballY=height/2 + r*sin(i);

  ballX=x + r*cos(i);

  ballY=y + r*sin(i);

  ellipse(ballX,ballY,r,r); 

  }

  fill(200,0,0);

  ellipse(x,y,r*1.2,r*1.2);

}

//Makes the flower bounce

void bounce(){
  
  
  x = x + (xspeed * xdirection);
  y = y + (yspeed * ydirection);
  
  if(x > width-r || x < r) {
    xdirection *= -1;
  
}
if (y > height-r || y < r) {
  ydirection *= -1;
}

// Adding the background makes the flower reset everytime because the class function is in draw
  background(#43AF76);
  
// The flower  
  float ballX;

  float ballY;


  fill(petalColor);

  for (float i=0;i<PI*2;i+=2*PI/n_petals) {

//  ballX=width/2 + r*cos(i);

//  ballY=height/2 + r*sin(i);

  ballX=x + r*cos(i);

  ballY=y + r*sin(i);

  ellipse(ballX,ballY,r,r); 

  }

 fill(200,0,0);

  ellipse(x,y,r*1.2,r*1.2);


}

}
