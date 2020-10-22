//------------------------------------------- Fuente Reutilizable -------------------------------------------
void fuenteDos(String text, float x, float y, color c, int t) {
  pushStyle();
  textFont(juego.pixel2);
  fill(c);
  textSize(t);
  text(text, x, y);
  popStyle();
}
