class Ghost {
float cellwidth = new mazeMaker().cellwidth;
float cellheight = new mazeMaker().cellheight;
PImage pink;
PImage blue;
PImage red;
PImage orange;
float pinkh = 13;
float pinkv = 14;
float redh = 13;
float redv = 10;
float blueh = 11;
float bluev = 14;
float orangeh = 15;
float orangev = 14;
float pinki;
float pinkj;
float redi;
float redj;
float bluei;
float bluej;
float orangei;
float orangej;
float incremento = 0.1;
float redincremento = 0.1;

  
void updatePosition() {
  pinki = cellwidth * pinkh;
  pinkj = cellheight * pinkv + 50; 
  redi = cellwidth * redh; 
  redj = cellheight * redv + 50;
  bluei = cellwidth * blueh;
  bluej = cellheight * bluev + 50;
  orangei = cellwidth * orangeh;
  orangej = cellheight * orangev + 50;
 }

void drawGhost(){

  image(pink,pinki,pinkj,30,30);
  image(red,redi,redj,30,30);
  image(blue,bluei,bluej,35,35);
  image(orange,orangei,orangej,35,30);
}
 
void redChase(){
  if(pacman.Counter == 218){
    redincremento = 0.2;  
  }
  if(pacman.Counter == 228){
    redincremento = 0.25;
  }
 // UP
 if(myArray[floor(redv-1)][floor(redh)] != 0){
  if(redv > pacman.v){
   redv -= redincremento;
  }
 }
 
 // DOWN
 if(myArray[floor(redv+1)][floor(redh)] != 0){
  if(redv < pacman.v){
   redv += redincremento;
  }
 }
 
 // LEFT
 if(myArray[floor(redv)][floor(redh-1)] != 0){
  if(redh > pacman.h){
   redh -= redincremento;
  }
 }
 
 // RIGHT
 if(myArray[floor(redv)][floor(redh+1)] != 0){
  if(redh < pacman.h){
   redh += redincremento;
  }
 }
}


void pinkChase(){
  
 // UP
 if(myArray[floor(pinkv-1)][floor(pinkh)] != 0){
  if(pinkv > (pacman.v - pacman.v*4)){
   pinkv -= incremento;
  }
 }
 
 // DOWN
 if(myArray[floor(pinkv+1)][floor(pinkh)] != 0){
  if(pinkv < (pacman.v + pacman.v*4)){
   pinkv += incremento;
  }
 }
 
 // LEFT
 if(myArray[floor(pinkv)][floor(pinkh-1)] != 0){
  if(pinkh > (pacman.h - pacman.h*4)){
   pinkh -= incremento;
  }
 }
 
 // RIGHT
 if(myArray[floor(pinkv)][floor(pinkh+1)] != 0){
  if(pinkh < (pacman.h + pacman.h*4)){
   pinkh += incremento;
  }
 }
}


void blueChase(){
  
 // UP
 if(myArray[floor(bluev-1)][floor(blueh)] != 0){
  if(bluev > pacman.v - pacman.v*2){
   bluev -= incremento;
  }
 }
 
 // DOWN
 if(myArray[floor(bluev+1)][floor(blueh)] != 0){
  if(bluev < pacman.v - pacman.v*2){
   bluev += incremento;
  }
 }
 
 // LEFT
 if(myArray[floor(bluev)][floor(blueh-1)] != 0){
  if(blueh > pacman.h - pacman.v*2){
   blueh -= incremento;
  }
 }
 
 // RIGHT
 if(myArray[floor(bluev)][floor(blueh+1)] != 0){
  if(blueh < pacman.h - pacman.v*2){
   blueh += incremento;
  }
 }
}

void orangeChase(){
  
 // UP
 if(myArray[floor(orangev-1)][floor(orangeh)] != 0){
  if(orangev > pacman.v){
   orangev -= incremento;
  }
 }
 
 // DOWN
 if(myArray[floor(orangev+1)][floor(orangeh)] != 0){
  if(orangev < pacman.v){
   orangev += incremento;
  }
 }
 
 // LEFT
 if(myArray[floor(orangev)][floor(orangeh-1)] != 0){
  if(orangeh > pacman.h){
   orangeh -= incremento;
  }
 }
 
 // RIGHT
 if(myArray[floor(orangev)][floor(orangeh+1)] != 0){
  if(orangeh < pacman.h){
   orangeh += incremento;
  }
 }
}



}
