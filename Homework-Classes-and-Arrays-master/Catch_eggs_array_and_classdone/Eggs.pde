class Eggs {
  //sign saying "catch the egg"
  int recX = 400;
  int recY = 20;
  int recW = 500;
  int recH = 100;


  //Variables for the egg - x & y and w & h
  float eggs1X=random(600);
  float eggs1Y=random(400);

  int eggsW=60;
  int eggsH=80;

  //Speed of the egg
  float xspeed=15;
  float yspeed=15;

  //The game screen width and height
  float display_lw = 10;
  float fieldW;


  Eggs(float temp_x, float temp_display_lw, float temp_y, float temp_fieldW) {

    eggs1X=temp_x;
    eggs1Y=temp_y;
    display_lw=temp_display_lw;
    fieldW=temp_fieldW;

    //Declaring fieldW the same as the width of the screen so the egg doesnt go out of the screen
    fieldW=width;
  }

  void move() {
    //Background with the sign, made here so it refreshes in draw for the animation
    background(200, 200, 0);
    textSize(50);
    textAlign (CENTER);
    fill(#6E6283);
    rect(recX, recY, recW, recH);
    fill(#FCFAFF);
    text("Catch the egg", 650, 80);

    //Here I make an if statement, so if the boolean is true and you when press the mouse on the egg, it will say you catch the egg
    if (((mousePressed) && (sq(mouseX-eggs1X)+sq(mouseY-eggs1Y)<sq(eggsH)/4))) {
      eggCatched = true;
      fill(#050505);
      textSize(70);
      text("YOU CATCHED THE EGG!", 650, 200);
    }
    if (!eggCatched) {
      //The egg
      noStroke();
      fill(#FFFFFC);
      ellipse(eggs1X, eggs1Y, eggsW, eggsH);
      //Making the eggs cordinates equal or bigger than the speed 
      eggs1X += xspeed;
      eggs1Y += yspeed;

      if (eggs1X > fieldW) {
        xspeed = -xspeed;
      }
      if (eggs1X < 0) {
        xspeed = -xspeed;
      }

      if ((eggs1Y > height)||(eggs1Y < 0)) {
        yspeed = -yspeed;
      }
    }
    
    //If the egg are catched end screen shows here
    if (eggCatched) {
      fill(#FFFFFC);
      textSize(70);
      text("YOU CATCHED THE EGG!", 650, 200);
    }
  }
}
