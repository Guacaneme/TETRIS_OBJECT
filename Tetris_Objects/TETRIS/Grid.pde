class Grid {
  int[][] memory;
  color[][] colorMemory;
  int rows;
  int columns;
  int fill;


  Grid(int x, int y, int back) {
    memory = new int[y][x];
    rows = y;
    columns = x;
    fill = back;
    colorMemory = new color[y][x];
    for (int a = 0; a < rows; a++) {
      for (int b = 0; b < columns; b++) {
        colorMemory[a][b] = fill;
      }
    }
  }

  void updateGrid(int[][] figure, int x, int y) {
    if (validMove(figure, x, y)) {
      for (int a = 0; a < ((figure.length)*(figure.length))-1; a++) {
        int posY = ((a / figure.length) | 0);
        int posX = (a % figure.length);
        if (figure[posY][posX] == 1) {
          memory[posY + y][posX + x] = 1;
        }
      }
    }
  }

  void updateColorGrid(int colFig) {
    for (int a = 0; a < rows; a++) {
      for (int b = 0; b < columns; b++) {
        if (memory[a][b] == 1) {
          if (colorMemory[ a][b] == fill ) {
            colorMemory[a][b] = colFig;
          }
        }
      }
    }
  }


  boolean validMove(int[][] figure, int x, int y) {
    for (int a = 0; a < ((figure.length)*(figure.length))-1; a++) {
      int posY = ((a / figure.length) | 0);
      int posX = (a % figure.length);
      if (memory[posY+y][posX+x] == 1) {
        return false;
      }
    }
    return true;
  }
}
