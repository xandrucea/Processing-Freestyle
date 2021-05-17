
int[] bezierArray = new int[7];


void setup (){
  
 
  size(960, 540);
  background(0);
  frameRate(10);
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
  
  int numberOfPaths = 7;
  for ( int i = 0; i < numberOfPaths; i++){
     bezierArray[i] = (int) random(1000);
  }
  noFill();
  stroke(random(255), random(255), random(255));
}

void randomBezier(){
 
  //background(0);
  for (int i = 0; i < 200; i += 10) {
    bezier(mouseX-(i/2.0), mouseY-bezierArray[0], 
                           bezierArray[1], 
                           bezierArray[2], 
                           bezierArray[3], 
                           bezierArray[4], 
                           bezierArray[5]-(i/16.0), 
                           bezierArray[6]+(i/8.0));
  }
  
}
