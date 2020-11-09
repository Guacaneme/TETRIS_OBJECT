class Polyomino {
  int[][] shape;
  color Color;
  int size;

  /**
   * @param {Number} Integer representation of shape
   * @param {Number} Array shape size
   * @param {Color} Color shape
   */
  Polyomino (int number, int Size, color h) {
    Color = h ;
    size = Size ;
    shape = new int[size][size];
    for (int i = 0; i < (size*size)-1; i++) {
      if ((number & (1 << (size*size)-1 - i)) != 0) {
        shape[((i / size) | 0)][(i % size)] = 1;
      } else {
        shape[((i / size) | 0)][(i % size)] = 0;
      }
    }
  }

  /**
   * π/2 clockwise rotation
   */
  void rotate() { 
    // Consider all squares one by one 
    for (int x = 0; x < size / 2; x++) { 
      // Consider elements in group 
      // of 4 in current square 
      for (int y = x; y < size - x - 1; y++) { 
        // Store current cell in 
        // temp variable 
        int temp = shape[x][y]; 

        // Move values from right to top 
        shape[x][y] = shape[size - 1 - y][x];
        // Move values from bottom to right 
        shape[size - 1 - y][x] = shape[size - 1 - x][size - 1 - y];
        // Move values from left to bottom 
        shape[size - 1 - x][size - 1 - y] = shape[y][size - 1 - x];
        // Assign temp to left 
        shape[y][size - 1 - x] = temp;
      }
    }
  }
  
  
}
