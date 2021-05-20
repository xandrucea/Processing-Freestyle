
int arrayCount = 8;
int[] bezierArray = new int[arrayCount];
double thickness = 0.0;


void setup (){
  
 
  size(540, 960);
  background(0);
  frameRate(10);

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
  
  int oldEnd = bezierArray[7];
  bezierArray = new int[arrayCount];
  
  for ( int i = 0; i < bezierArray.length; i++){
    

       bezierArray[i] = (int) random(-100, 1600);
    
  }
  noFill();
  stroke(random(255), random(255), random(255));
}

void randomBezier(){
  
  thickness += 0.1;
  println(thickness);
  //background(0);
  for (int i = 0; i < 200; i += 20) {
    
    bezier(40,
           40+i, 
           -100, 
           600, 
           400, 
           400 , 
           bezierArray[6] - (i / 8.0),
           bezierArray[7] + (i / 16.0));
           
  } 
}

//https://stackoverflow.com/questions/28671706/processing-and-stop-method
void exit(){
  // add screenshot function
  super.exit();
}
