// I choose only having one flower to bounce
Flower myFlower1;  



void setup(){
  size(800,600);
  background(#43AF76);

  int _r1= 60;

  int _petals=7;

  float _x=width/2;

  float _y=height/2;

  int _pc=#FFA000;

  myFlower1 = new Flower(_r1,_petals,_x,_y,_pc);

}
  
  void draw(){
  
  myFlower1.display(); 
    
  // Defining the flower to bounce  
  
  myFlower1.bounce();

}
