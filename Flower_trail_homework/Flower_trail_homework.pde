Flower myFlower1;

// Variable for my flowerclass, because the constructer needs petals and petalcolor
  int _petal=7;
  int _p=#FFA000;

// Number of objects
int num = 10;
// Arrays of the x and y values
int[] x = new int[num];
int[] y = new int[num];
// Declariation of indexposition for my modulo
int indexPosition = 0;



void setup() {

  size(1000, 1000);

}



void draw() {

  background(#4246B9);
  // Declaring my x and y values as an array for the indexposition equal to my mouseX and mouse Y
  // position so the objects disappears
  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;
  // Cycle between 0 and the number of elements
  indexPosition = (indexPosition + 1) % num;
  for (int i = 0; i < num; i++) {

    // Set the array position to read
    int pos = (indexPosition + i) % num;
    float radius = (num-i) / 1.0;
    
    //ellipse(x[pos], y[pos], radius, radius); - taken from Processing.org/arrays

    // My class flower instead of the ellipse from Processing.org/arrays
     myFlower1 = new Flower(radius,_petal,x[pos],y[pos],_p);

    myFlower1.display();
  }

}
