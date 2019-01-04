//Declaring my array for the class farmer
farmer[] Farmers = new farmer [3];

//Declaring my class
Eggs myEggs1;

//Declaring my farmer class
farmer myFarmer1;

//Making a boolean, so when the egg is catched, the egg disappears also why I state it false
boolean eggCatched;
boolean state=false;

void setup() {
  size(1280, 720);
  frameRate(4);
  //Making the variables for the eggs local by defining them here
  int eggsW=60;
  int eggsH=80;
  float eggs1X=random(600);
  float eggs1Y=random(400);
  //Variables for the farmer - x & y and w & h
  float farmer1X=random(600);
  float farmer1Y=random(400);
  int farmerW=60;
  int farmerH=80;
 
  myEggs1 = new Eggs(eggs1X, eggs1Y, eggsW, eggsH);
  Farmers[0] = new farmer(farmer1X, farmer1Y, farmerW, farmerH);
  Farmers[1] = new farmer(farmer1X, farmer1Y, farmerW, farmerH);
  Farmers[2] = new farmer(farmer1X, farmer1Y, farmerW, farmerH);
  
  
}

void draw() {

  myEggs1.move();
  Farmers[0].move();
  Farmers[1].move();
  Farmers[2].move();
}
