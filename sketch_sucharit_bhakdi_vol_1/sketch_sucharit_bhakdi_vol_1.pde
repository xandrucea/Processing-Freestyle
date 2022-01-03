PImage imgBhakdi;
Bhakdi bhakdi;

ArrayList allBhakdis = new ArrayList();


void setup(){
 
  size(1000, 900);
  background(255);
  frameRate(15);
  imgBhakdi = loadImage("bhakdi_transparent.png");
}


void draw(){
  //background(255);
  
  if( allBhakdis.size() < 1 ){ 
    for ( int i = 0; i < 3; i++){
      bhakdi = new Bhakdi((int)(width/random(1.5,2.5)), (int)(height/random(1.5, 2.5)), 5);  
      allBhakdis.add(bhakdi);
      
    }
    println("still adding");
  }
  
  
  for ( int i = 0; i < allBhakdis.size(); i++){
    
    Bhakdi aSpecificBhakdi = (Bhakdi) allBhakdis.get(i);
    aSpecificBhakdi.rotateBhakdi();  
  }
  
}


class Bhakdi {
 
  int posX; 
  int posY;
  float angle = 0;
  float _speed;
  
  float forceX;
  float forceY;
  
  public Bhakdi( int positionX, int positionY, float speed){
   
    posX = positionX;
    posY = positionY;
    _speed = speed;
    
    forceX = random(-2, 2);
    forceY = random(-2, 2);
  }
  
  void rotateBhakdi(){
    translate(posX, posY);  
    rotate(angle);
    imageMode(CENTER);
    image(imgBhakdi, 0, 0, 140, 200);
  
    angle += 0.05 * _speed;
    posX += forceX;
    posY += forceY;
  }
  
}
