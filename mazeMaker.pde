class mazeMaker{
float cellwidth = width / 28;
  float cellheight = height / 31;

void drawMaze() {

// FOR THE MAZE

int num;
  for (int i = 0; i < myArray.length; i++) {
    for (int j = 0; j < myArray[i].length; j++) {
      num = myArray[i][j];   


      if (num == 0) {
        // Blu
        fill(0, 0, 240);
        rect(xmarker, ymarker, cellwidth, cellheight);
      } else if (num == 1) {
        // white 
        fill(255, 255, 255);
        ellipse(xmarker + cellwidth/2, ymarker+ cellheight/2, candysize, candysize);
      } else if (num == 2) {
        // greay
        // fill(50, 50, 50);
      } else if (num == 3) {
        // lightblue
        fill(0, 255, 255);
        ellipse(xmarker + cellwidth/2, ymarker + cellheight/2, supercandy, supercandy);
      } else {
        // Do smth - in red
        fill(240, 0, 0);
      } 

      if (xmarker >= 840 - cellwidth ) {
        ymarker += cellheight;
        xmarker = 0;
      } else if (ymarker > 930 - cellheight) {
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

}
