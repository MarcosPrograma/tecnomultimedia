class Ironman {
  //PERSONAJE PRINCIPAL - PROTAGONISTA  
  // Campos - variables (propiedades)
  float xIronman, yIronman;
  float velY = 2.5;
  PImage ironman; 
  Proyectil proyectil;

  // Constructor - metodo o funcion inicial
  Ironman() {
    xIronman = width - 700;
    yIronman = height/2;
    ironman = loadImage("ironmanVolador.png"); 
    proyectil = new Proyectil(yIronman);
  }

  // Metodos - funciones (acciones)
  void dibujar() { // Mostrar al personaje
    image(ironman, xIronman, yIronman);
    proyectil.dibujar();
  } 

  //Metodos
  void volarArriba() { // Mover hacia arriba con la tecla correspondiente
    if ( keyCode == 'W' || keyCode == 'w') {
      if (yIronman < 80) {
      } else {
        yIronman -= velY;
      }
    }
  }
  void volarAbajo() { // Mover hacia abajo con la tecla correspondiente
    if ( keyCode == 'S' || keyCode == 's') {
      if (yIronman > height-80) {
      } else {
        yIronman += velY;
      }
    }
  }
  void dispararCanon(){
    proyectil.disparar();
  }
}
