/**
 * Relativity. 
 * 
 * Each color is perceived in relation to other colors. The top and bottom 
 * bars each contain the same component colors, but a different display order 
 * causes individual colors to appear differently. 
 */
 
color a, b, c, d, e;

void setup() {
  size(640, 360);
  noStroke();
  a = color(165, 167, 20);
  b = color(77, 86, 59);
  c = color(42, 106, 105);
  d = color(165, 89, 20);
  e = color(146, 150, 127);
  noLoop();  // Draw only one time
}

void draw() {
  color[] colorsABCDE = { a, b, c, d, e };
  color[] colorsCADBE = { c, a, d, b, e };
  drawBand(colorsABCDE, 0, width/128);
  drawBand(colorsCADBE, height/2, width/129);
  save("relativity.png");
}

void drawBand(color[] colors, int yPosition, int barWidth) {
  for(int i = 0; i < width; i += barWidth * colors.length) {
    for(int j = 0; j < colors.length; j++) {
      fill(colors[j]);
      rect(i + j * barWidth, yPosition, barWidth, height / 2);
    }
  }
}