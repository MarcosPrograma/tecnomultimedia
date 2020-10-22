class Proyectil {
  //OBJETO ADJUNTO AL PROTAGONISTA
  // ------------------------------------------- Campos - variables (propiedades) -------------------------------------------
  float xProyectil, yProyectil;
  float movProyectil;
  PImage proyectil;

  //Constructor == SETUP del OBJETO
  Proyectil() {
    xProyectil = width - 650;
    yProyectil = height/2;
    movProyectil = 2;
    //Carga de imagenes
    proyectil = loadImage("proyectil.png");
  }

  // ------------------------------------------- Metodos - funciones (acciones) -------------------------------------------
  void dibujar() { //DRAW Del OBJETO
    image(proyectil, xProyectil, yProyectil);
  }

  void disparar() { //Mover proyectil sumando un pixel
    xProyectil = xProyectil + 1;
  }
}
