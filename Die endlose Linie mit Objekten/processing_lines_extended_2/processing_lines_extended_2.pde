

float xTemp = 0;
float yTemp;

ArrayList<Points> allPoints;
ArrayList<Points> pointsTemp;

int picCounter= 0;

void setup(){
  
 size(800, 800);
 background(255);
 frameRate(60);
 allPoints = new ArrayList<Points>();
 pointsTemp = new ArrayList<Points>();

}

void draw(){
 
  fill(255);
  //rect(0, height - 20, millis() / 100, 20); 
  
  Points p = new Points();
  
  int arraySize = allPoints.size();
  if( arraySize == 0 ){
      
      p.x = random(0, width);
      p.y = random(0, height);
      allPoints.add(p);
      pointsTemp.add(p);
   } else { 
     
     Points aPoint = allPoints.get((int)allPoints.size() - 1);
     p.x = aPoint.x;
     p.y = aPoint.y;
   }
  
    
    
    Points pNext = new Points();
    
    boolean searchForPoints = true;
    while (searchForPoints ){
      pNext.x = random(p.x - 50, p.x + 50);
      pNext.y = random(p.y - 50, p.y + 50);
      
      if( pNext.x > -50 && 
          pNext.x < (width + 50) &&
          pNext.y > -50 &&
          pNext.y < (height + 50) ){
            searchForPoints = false;
      }
    }
    
    stroke(255);
    strokeWeight(random(1, 10));
    
    
    allPoints.add(pNext);
    pointsTemp.add(pNext);
    
    line(p.x, p.y, pNext.x, pNext.y);
    
    picCounter++;
    if( picCounter % 1000 == 0 ) { 
        save("/Users/alex.cio/Desktop/giffer/" + picCounter / 1000 + ".png");
    }
    
    
    
      
  if( frameCount % 150 == 0 ){
    
    strokeWeight(random(1,5));
    stroke(random(0,255), random(0,255), random(0,255));
    for( int i = 0; i < pointsTemp.size(); i++){
       
      Points p1 = pointsTemp.get(i);
      Points p2 = pointsTemp.get(i+1);
      
      //stroke(200, 0, 0);
      
      line(p1.x, p1.y, p2.x, p2.y);
      
      
      
      if( i+1 >= pointsTemp.size() - 1) break;
    }
    
    pointsTemp = new ArrayList<Points>(); 
  }
}


class Points{
  
   float x;
   float y;
}
