void fuenteIndicadora(String text, float x, float y) {
  pushStyle();
  textFont(pixel);
  fill(#FFDA03);
  text(text, x, y);
  popStyle();
}

void fuenteDos(String text, float x, float y, color c, int t) {
  pushStyle();
  textFont(pixel2);
  fill(c);
  textSize(t);
  text(text, x, y);
  popStyle();
}

void reciclar( int r ) {
  x[r] = random(-10, width );
  y[r] = -50;
  t[r] = random( 0, 15 );
  v[r] = random( 0.1, 2.5 );
}
