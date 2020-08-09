class yellowGuy {

  // Retrieve variables 
  float cellwidth = new mazeMaker().cellwidth;
  float cellheight = new mazeMaker().cellheight;

  // Position in the array
  float h = 13;
  float v = 23;

  // Define the position in pixels
  float i;
  float j;
  PFont Birds;
  int Counter =+ 0;     // Keeps track of the number of points eaten
  float incremento = 0.2;
  String sentido = "horizontal";
  PImage Lives;


  void updatePosition() {
    i = cellwidth * h + cellwidth * 1/2 ;
    j = cellheight * v + cellheight * 1/2 + 50;
  }


  void drawPac() {
    fill(255, 255, 0);
    ellipse(i, j, 30, 30);

    if (keyPressed) {
System.out.println(h);
System.out.println(v);
System.out.println(keyPressed);

if(h != cellwidth/2){
keyPressed = false;



if(v != cellheight/2){
keyPressed = false;


if(keyPressed == false){



if(keyPressed == false){



      if ((myArray[round(v)][round(h)] == 1)){
      eatFood();
      }
      
      if(myArray[floor(v)][floor(h)] == 3){
        eatCheese();
      }

      if ((keyCode == UP) && (v>(0))&&(sentido == "vertical" || (h - floor(h))< 0.05)) {
        
        if ((myArray[floor(v-incremento)][floor(h)] != 0)) {
          
            v -= incremento;
            sentido = "vertical";
          
           
        }
      } 
    else if ((keyCode == RIGHT)&&(h <= (myArray[0].length))) {
        if (h >= 27) {
          h = 0;
        }
        if ((myArray[floor(v)][floor(h+1)] != 0)) {
          
            h += incremento;
          sentido = "horizontal";
        
         
        }
      }
        else if ((keyCode == LEFT)&&(h >=(0))) {
        if (h <= 0.1) {
          h = 28;
        }

        if ((myArray[floor(v)][floor(h-incremento)] != 0)) {
          
            h -= incremento;
          sentido = "horizontal";
        }
          
          
        }
       else if ((keyCode == DOWN)&&(v<(myArray.length))&&(sentido == "vertical" || (h - floor(h))< 0.05)) {
        if ((myArray[floor(v+1)][floor(h)] != 0)) {
          
            v += incremento;
          sentido = "vertical";
        
          
        }
      }
     }
    }
   }
  }
 }
}

  

  void eatFood() {
   
   myArray[round(v)][round(h)] = 2;         
   Counter++;
   
   if(Counter == 238){
     textFont(Birds, 30);
    fill(255, 255, 255);
    textAlign(CENTER);
    text("Level cleared", width/2, height/2);
  }
 }
  void eatCheese(){
  myArray[round(v)][round(h)] = 2;  
}

  void countPoint() {
    textFont(Birds, 30);
    fill(255, 255, 255);
    textAlign(LEFT);
    text("Score",  30, 25);
    text(Counter,  30, 50);
  }
  
  void countLives(){
    image(Lives,30,height + 55,40,35);
    image(Lives,70,height + 55,40,35);
    image(Lives,110,height + 55,40,35);
    
  }
}
