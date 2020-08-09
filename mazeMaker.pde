class mazeMaker {

  

  // Declare constants
  final float cellwidth = width / 28;
  final float cellheight = height / 31;
  int xmarker = 0;
  int ymarker = 0;
  int candysize = 7;
  int supercandy = 20;
  int padding = 5;
 
    int tilesx = myArray[0].length;
  int tilesy = myArray.length;
  final color zero = color(25, 25, 166);
  final color one = color(255, 255, 255);
  final color two = color(0);
  final color three = color(0, 255, 255);

  void drawMaze() {

    // Draw the maze

    for (int i = 0; i < tilesy; i ++) {
      for (int j = 0; j < tilesx; j++) {
        if (!(myArray[i][j] == 1)) {
          noStroke();
          fill(getColor(i, j));
          rect(j*cellwidth, i*cellheight + 50, cellwidth, cellheight);
          //println(cell_width + " " + cell_height);
        } else {
          noStroke();
          fill(getColor(i, j));
          ellipse(j*cellwidth + cellwidth/2, i*cellwidth + cellheight/2 + 50, candysize, candysize);
        }
      }
    }
  }


  // Unaccessible from outside this class
  private color getColor(int i, int j) {
    color c = color(255, 0, 0);

    // Retrieve tile color according to array

    switch(myArray[i][j]) {
    case 0:
      return zero;
    case 1:
      return one;
    case 2:
      return two;
    case 3:
      return three;
  }
    return c;
  }



  }
