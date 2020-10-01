class Stick {
  float x, y;
  PImage stickman;

  //Constructor
  Stick(float posx, float posy, int i) {
    //Inicio de las variables
    x = posx;
    y = posy;

    //Carga de imagenes
    stickman = loadImage("stick1" + i + ".png");
  }

  void mov() {
    x += 1;
  }

  void dibujar() {
    image(stickman, x, y);
  }
}
