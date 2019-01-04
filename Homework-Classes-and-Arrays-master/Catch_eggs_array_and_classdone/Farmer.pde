class farmer {     
  //Declaring my image
  PImage img;

  //Variables for the farmer - x & y and w & h
  float farmer1X=random(700);
  float farmer1Y=random(700);

  float farmerW=200;
  float farmerH=200;

  //Speed of the farmers
  float x2speed=random(40);
  float y2speed=random(20);

  //The game screen width and height for the farmer
  float display_2lw = 10;
  float field2W;

  farmer(float temp_2x, float temp_display_2lw, float temp_2y, float temp_field2W) {

    farmer1X=temp_2x;
    farmer1Y=temp_2y;
    display_2lw=temp_display_2lw;
    field2W=temp_field2W;

    //Declaring fieldW the same as the width of the screen so the egg doesnt go out of the screen
    field2W=width;
  }

  void move() {
    //Loading image of the farmer
    img = loadImage("farmer.png"); 
    image(img, farmer1X, farmer1Y, farmerW, farmerH);

    //Making the eggs cordinates equal or bigger than the speed 
    farmer1X += x2speed;
    farmer1Y += y2speed;

    if (farmer1X > field2W) {
      x2speed = -x2speed;
    }
    if (farmer1X < 0) {
      x2speed = -x2speed;
    }

    if ((farmer1Y > height)||(farmer1Y < 0)) {
      y2speed = -y2speed;
    }
  }
}
