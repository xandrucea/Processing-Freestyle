
int[] bezierArray = new int[8];


void setup (){
  
 
  size(1440, 900);
  background(0);
  frameRate(5);
  stroke(255);
}

void draw(){
  
  //shootEllipses();
  randomBezier();
  mouseReleased();
}

void shootEllipses(){
   
  float xE = random(width); 
  float yE = random(height);
  float distoriton = random(-10, 30);
  
  println(distoriton);
  for ( int i = 0; i < width; i++){
     
    ellipse(xE, yE, 50, 50);
    fill(random(255), random(255), random(255));
    xE += distoriton;
    yE += distoriton;
    
  }
}

void mouseReleased(){
  
  for ( int i = 0; i < bezierArray.length; i++){
     bezierArray[i] = (int) random(-100, 1600);
  }
  noFill();
  stroke(random(255), random(255), random(255));
}

void randomBezier(){
 
  //background(0);
  for (int i = 0; i < 200; i += 20) {
    bezier(bezierArray[0], 
           bezierArray[1], 
           bezierArray[2], 
           bezierArray[3], 
           bezierArray[4], 
           bezierArray[5]-(i/12.0), 
           bezierArray[6]+(i/4.0),
           bezierArray[7]);
  }
  
}
