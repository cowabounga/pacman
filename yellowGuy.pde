class yellowGuy {
  float cellwidth = width / 28;
  float cellheight = height / 31;
  int h = 13;
  int v = 23;



  void drawPac() {

    float i = cellwidth * h + cellwidth * 1/2;
    float j = cellheight * v + cellheight * 1/2 ;

    fill(255, 255, 0);
    ellipse(i, j, 30, 30);
  }

  void movePac() {

    key = CODED; 


    System.out.println(keyCode);
  }



  void keyPressed() {
    if (key == CODED) {
      if (keyCode == UP) {
        v = v++;
      } else if (keyCode == DOWN) {
        v = v--;
      } else if (keyCode == LEFT) {
        h = h--;
      } else if (keyCode == RIGHT) {
        h = h++;
      }
    }
  }
}
