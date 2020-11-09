boolean start; //<>// //<>// //<>// //<>//
boolean game;
PImage backg;
String dir;
int[][] tetrominoes = new int[7][2];
int[] colors = new int[7];
int t;
int tNext;
int x = 4;
int y = 0;


void setup() {
  size(800, 600);
  backg = loadImage("Fondo.jpeg");
  start = true;
  game = false;
  // T
  tetrominoes[0][0] = 184;
  tetrominoes[0][1] = 3;
  colors[0] = 16711805;
  // L
  tetrominoes[1][0] = 120;
  tetrominoes[1][1] = 3;
  colors[1] = 15033621;
  //J
  tetrominoes[2][0] = 312;
  tetrominoes[2][1] = 3;
  colors[2] = 1185760;
  //S
  tetrominoes[3][0] = 240;
  tetrominoes[3][1] = 3;
  colors[3] = 3399698;
  //Z
  tetrominoes[4][0] = 408;
  tetrominoes[4][1] = 3;
  colors[4] = 14881298;
  //O
  tetrominoes[5][0] = 15;
  tetrominoes[5][1] = 2;
  colors[5] = 15256881;
  //I
  tetrominoes[6][0] = 3840;
  tetrominoes[6][1] = 4;
  colors[6] = 4126186;
}

void draw() {
  image(backg, 0, 0);

  // Main menú
  if (start) {
    write("TETRIS 2.0", 75, 200, 130, #FFFFFF, #FFFFFF);

    properties(#EFDCF2, #EFDCF2);
    rect(310, 300, 180, 50);
    write("Jugar", 365, 335, 30, #490D52, #AA6AB4);

    properties(#EFDCF2, #EFDCF2);
    rect(310, 400, 180, 50);
    write("Puntajes", 340, 435, 30, #490D52, #AA6AB4);


    if ( mouseX >= 310 && mouseX <= 490 && mouseY >= 300 && mouseY <= 350 && mousePressed ) {
      start = false;
      game = true;
      t = (int)random(0, 7);
      tablero = new Grid(10,20,8002479);
      currentFig = new Polyomino(tetrominoes[t][0],tetrominoes[t][1],colors[t]);
      frameRate(1);
    }
    if ( mouseX >= 310 && mouseX <= 490 && mouseY >= 400 && mouseY <= 450 && mousePressed ) {
      start = false;
    }
  } else if (game) {
    game();
  }
}


/**
 * @param {String} The string to be displayed
 * @param {Number} x-coordinate of text
 * @param {Number} y-coordinate of text
 * @param {Number} Size of text
 * @param {Color} Color of fill
 * @param {Color} Color of stroke
 */

void write(String str, int x, int y, float size, color backColor, color strokeColor) {
  textSize(size);
  properties(backColor, strokeColor);
  text(str, x, y);
}

void properties(color back, color stroke) {
  fill(back);
  stroke(stroke);
}
