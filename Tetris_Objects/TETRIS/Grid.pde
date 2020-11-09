class Grid {
  int[][] memory;
  color[][] colorMemory;
  int rows;
  int columns;


  Grid(int x, int y) {
    memory = new int[y][x];
    rows = y;
    columns = x;
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
