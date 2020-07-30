final static byte  FPS = 30;
int xmarker = 0;
int ymarker = 0;
int xPosition = 400;
int yPosition = 450;
int xMouvement = 5;
int yMouvement = 5;
int squareCenterX = width/56;
int squareCenterY = height/62;
int squareHorizontaly = width/28;
int squareVerticaly = width/31;
int candysize = 7;
int supercandy = 20;
int padding = 5;


int[][] myArray =  new int[][]{   {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
                                  {0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0},
                                  {0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,1,0},
                                  {0,1,0,2,2,0,1,0,2,2,2,0,1,0,0,1,0,2,2,2,0,1,0,2,2,0,1,0},
                                  {0,3,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,3,0},
                                  {0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
                                  {0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,1,0},
                                  {0,1,1,1,1,1,1,0,0,1,1,1,1,0,0,1,1,1,1,0,0,1,1,1,1,1,1,0},
                                  {0,0,0,0,0,0,1,0,0,0,0,0,2,0,0,2,0,0,0,0,0,1,0,0,0,0,0,0},
                                  {2,2,2,2,2,0,1,0,0,0,0,0,2,0,0,2,0,0,0,0,0,1,0,2,2,2,2,2},
                                  {2,2,2,2,2,0,1,0,0,2,2,2,2,2,2,2,2,2,2,0,0,1,0,2,2,2,2,2},
                                  {2,2,2,2,2,0,1,0,0,2,2,2,2,2,2,2,2,2,2,0,0,1,0,2,2,2,2,2},
                                  {0,0,0,0,0,0,1,0,0,2,0,0,0,0,0,0,0,0,2,0,0,1,0,0,0,0,0,0},
                                  {2,2,2,2,2,2,1,2,2,2,0,2,2,2,2,2,2,0,2,2,2,1,2,2,2,2,2,2},
                                  {2,2,2,2,2,2,1,2,2,2,0,2,2,2,2,2,2,0,2,2,2,1,2,2,2,2,2,2},
                                  {0,0,0,0,0,0,1,0,0,2,0,2,2,2,2,2,2,0,2,0,0,1,0,0,0,0,0,0},
                                  {2,2,2,2,2,0,1,0,0,2,0,0,0,0,0,0,0,0,2,0,0,1,0,2,2,2,2,2},
                                  {2,2,2,2,2,0,1,0,0,2,2,2,2,2,2,2,2,2,2,0,0,1,0,2,2,2,2,2},
                                  {2,2,2,2,2,0,1,0,0,2,2,2,2,2,2,2,2,2,2,0,0,1,0,2,2,2,2,2},
                                  {0,0,0,0,0,0,1,0,0,2,0,0,0,0,0,0,0,0,2,0,0,1,0,0,0,0,0,0},
                                  {0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0},
                                  {0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,1,0},
                                  {0,1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,1,0},
                                  {0,3,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,3,0},
                                  {0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,0,0},
                                  {0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,0,0},
                                  {0,1,1,1,1,1,1,0,0,1,1,1,1,0,0,1,1,1,1,0,0,1,1,1,1,1,1,0},
                                  {0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0},
                                  {0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0},
                                  {0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
                                  {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
};


 void setup() {
   background(0);
   frameRate(FPS);
   size(840, 930);
   surface.setTitle("Insert Coin!");
   surface.setResizable(true);
}

void draw () {
noFill();
noStroke();


fill(255, 255, 0);
ellipse(xPosition,yPosition,30,30);

//float aspectratio = height/width;
//float cellwidth = height / 28*aspectratio;
//float cellheight = aspectratio*width / 31;
float cellwidth = width / 28;
float cellheight = height / 31;


// FOR THE MAZE

int num;
 for(int i = 0; i < myArray.length; i++) {
   for(int j = 0; j < myArray[i].length; j++) {
      num = myArray[i][j];   
      
      
        if(num == 0) {
          // Blu
          fill(0, 0, 240);
          rect(xmarker, ymarker, cellwidth, cellheight);
        } else if(num == 1) {
          // white 
          fill(255, 255, 255);
          ellipse(xmarker + cellwidth/2, ymarker+ cellheight/2, candysize, candysize);
          if(dist(xPosition, yPosition, squareCenterX, squareCenterY) < squareHorizontaly)
          xMouvement = 0  ;{
          }
          if(dist(xPosition, yPosition, squareCenterX, squareCenterY) < squareVerticaly)
          yMouvement = 0  ;{ 
          }
          
          
        }  else if(num == 2) {
          // greay
          // fill(50, 50, 50);
          
        }  else if(num == 3) {
          // lightblue
          fill(0, 255, 255);
          ellipse(xmarker + cellwidth/2, ymarker + cellheight/2, supercandy, supercandy);
        }  else  {
         // Do smth - in red
         fill(240, 0, 0);
        } 
        
        if(xmarker >= 840 - cellwidth ){
          ymarker += cellheight;
          xmarker = 0;
        } else if(ymarker > 930 - cellheight) {
          // We are done
          xmarker = 0;
          ymarker = 0;
          // Get the f*ck outta here
          i = myArray.length-1;
          j = myArray[i].length-1;
        } else {
          xmarker += cellwidth;
       }
      
   }
 }
}



void keyTyped() {
  if(key == CODED) {
  if(keyCode == UP) {
  
  System.out.println(keyCode);
  // Hello there

  } 
 }  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      yPosition = yPosition-yMouvement;
    } else if (keyCode == DOWN) {
      yPosition = yPosition+yMouvement;
    } 
      else if (keyCode == LEFT) {
      xPosition=xPosition-xMouvement;
      }
      else if (keyCode == RIGHT) {
      xPosition=xPosition+xMouvement;
      }
      } 
 
}
