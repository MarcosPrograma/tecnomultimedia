class Proyectil {
  float xProyectil, yProyectil;
  float movProyectil;
  PImage proyectil;

  //Constructor 
  Proyectil(float posy) {
    xProyectil = width - 700;
    yProyectil = posy;
    movProyectil = 0;
    //Carga de imagenes
    proyectil = loadImage("proyectil.png");
  }

  void dibujar() {
    image(proyectil, xProyectil, yProyectil);
  }

  void disparar() {
    xProyectil = movProyectil + 2;
  }
}
