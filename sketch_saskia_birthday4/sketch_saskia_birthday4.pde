
int x;
int y;

int sizeRect;
int reps = 0;

float colorRed;
float colorGreen;
float colorBlue;


void setup(){
  
 size(700,700);
 background(255);
 //frameRate(10);
 noFill();
 
  x = width-200;
  y = height-200;
  sizeRect = 1;
  resetColors();

}

void resetColors(){
  
  colorRed = random(150, 255);
  colorGreen = random(150, 255);
  colorBlue = random(150, 255);
}

void draw(){
 
   drawRect(x, y);
   reps++;
   
   if( reps >= 150 ){
     
      reps = 0;
      x = (int)random(width);
      y = (int)random(height);
      
      // changing size for other pattern
      sizeRect = 0; //(int)random(0, 50);
      resetColors();
   }
   
   ellipse(random(width), random(height), 4, 4);
  
}

void mouseMoved(){
  ellipse( mouseX, mouseY, 10, 10); 
}


void drawRect(int xValue, int yValue){
 
  rect(xValue - (sizeRect / 2), yValue - (sizeRect / 2), sizeRect, sizeRect);
  stroke(colorRed, colorGreen, colorBlue);
  sizeRect++;
  if( sizeRect % 2 == 0){
     colorRed++; 
  }
  
  if( sizeRect % 3 == 0 ){
    colorGreen--; 
  }
  
  if( sizeRect % 4 == 0 ){
    colorBlue--; 
  }
  
}
