boolean start; //<>// //<>// //<>// //<>//
boolean game;
boolean scores;
PImage backg;
String dir;

void setup() {
  size(800, 600);
  backg = loadImage("Fondo.jpeg");
  start = true;
  game = false;
  scores = false;
  tetrominoes[0][0] = 184;
  tetrominoes[0][1] = 3;
  tetrominoes[1][0] = 120;
  tetrominoes[1][1] = 3;
  tetrominoes[2][0] = 312;
  tetrominoes[2][1] = 3;
  tetrominoes[3][0] = 240;
  tetrominoes[3][1] = 3;
  tetrominoes[4][0] = 408;
  tetrominoes[4][1] = 3;
  tetrominoes[5][0] = 184;
  tetrominoes[5][1] = 2;
  tetrominoes[6][0] = 184;
  tetrominoes[6][1] = 4;
  
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
      frameRate(1);
    }
    if ( mouseX >= 310 && mouseX <= 490 && mouseY >= 400 && mouseY <= 450 && mousePressed ) {
      start = false;
      scores = true;
    }
  } else if (game) {
    game();
  } else if (scores) {
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
