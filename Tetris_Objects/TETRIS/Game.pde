Grid tablero;
Polyomino currentFig;
Polyomino nextFig;
int[][] figToShow;

void game() {
  drawSet();
}

void drawSet() {
  print("Entró");
  tNext = (int)random(0, 7);
  int largo = tetrominoes[tNext][1];
  nextFig = new Polyomino(tetrominoes[t][0], tetrominoes[t][1], colors[t]);
  figToShow = new int[largo][largo];
  print(figToShow[1][1]);
  
  for (int i = 0; i < (largo*largo)-1; i++) {
    if (figToShow[((i / largo) | 0)][(i % largo)] == 1) {
      print(figToShow[((i / largo) | 0)][(i % largo)]);
      fill(colors[tNext]);
      rect((((i / largo) | 0)*30)+ 100, ((i % largo)*30)+150, 30, 30);
    }
  }
}
