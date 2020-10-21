class Proyectil {
  float xProyectil, yProyectil;
  float movProyectil;
  PImage proyectil;

  //Constructor 
  Proyectil(float posx, float posy) {
    xProyectil = posx;
    yProyectil = posy;
    movProyectil = 0;
    //Carga de imagenes
    proyectil = loadImage("proyectil.png");
  }
  
  void dibujar(){
    image(proyectil, xProyectil, xProyectil);
  }
  
  void disparar(){
    movProyectil += 2;
  }
}
