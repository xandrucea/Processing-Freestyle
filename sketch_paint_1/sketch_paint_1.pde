
int modus = 0;
ArrayList<Integer> lineCoordinates = new ArrayList<Integer>();

void setup(){
  
   size(600, 600);
   background(255);
   strokeWeight(2);
   prepareSzene(); 
}

void draw(){
  
}

void resetSzene(){
  background(255);
  prepareSzene();
}

void prepareSzene(){
  
  fill(255);
  
  rect(0, 0, 50, 50);
  point(25, 25);
  
  rect(51, 0, 50, 50);
  point(70, 20);
  point(74, 28);
  point(78, 24);
  point(75, 25);
  point(70, 10);
  point(80, 15);
  
  rect(101, 0, 50, 50);
  line(107, 5, 130, 40);
  
  fill(0);
  textSize(15);
  text("1", 21, 70); 
  text("2", 71, 70); 
  text("3", 121, 70); 
}

void keyPressed(){
 
  if( key == 'c' ){
    resetSzene(); 
  }
  
  if( key ==  '1' ){
    modus = 0;  
  }
  
  if( key == '2' ){
    modus = 1; 
  }
  
  if( key == '3' ){
    modus = 2; 
  }
  
  println(modus);
}

void mouseDragged(){
  
  if( modus == 0 ){
    point(mouseX, mouseY);  
  }
  
  if( modus == 1 ){
    
    for ( int i = 0; i < 10; i++){
       
      point(mouseX + random( -15, 15 ), mouseY + random( -15, 15 ));
    }
  }
   
}

void mousePressed(){
  
  if( modus == 2 ){
         lineCoordinates.add(mouseX);
         lineCoordinates.add(mouseY);
         
         if( lineCoordinates.size() > 2 ){
            
           
           line(lineCoordinates.get(0),
                lineCoordinates.get(1),
                lineCoordinates.get(2),
                lineCoordinates.get(3));
           int x2 = lineCoordinates.get(2);
           int y2 = lineCoordinates.get(3);
           lineCoordinates = new ArrayList<Integer>();
           lineCoordinates.add(x2);
           lineCoordinates.add(y2);
         }
  }
  
}
