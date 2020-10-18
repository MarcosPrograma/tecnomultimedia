class Ironman {
  //PERSONAJE PRINCIPAL - PROTAGONISTA  
  // Campos - variables (propiedades)
  float xIronman, yIronman;
  float velY = 2.5;
  PImage ironman;  

  // Constructor - metodo o funcion inicial
  Ironman() {
    xIronman = width - 700;
    yIronman = height/2;
    ironman = loadImage("ironmanVolador.png");
  }

  // Metodos - funciones (acciones)
  void dibujar() { // Mostrar al personaje
    image(ironman, xIronman, yIronman);
  } 

  //Metodos - keyPressed  
  void volarArriba() { // Mover hacia arriba con la tecla correspondiente
    if ( keyCode == 'W' || keyCode == 'w' ) {
      yIronman -= velY;
    } 
    //else if (yIronman > height - 100) {
    //  yIronman = height - 100;
    //  velY += velY;
    //}
  }
  void volarAbajo() { // Mover hacia abajo con la tecla correspondiente
    if ( keyCode == 'S' || keyCode == 's') {
      yIronman += velY;
    } 
    //else if (yIronman < 0) {
    //  yIronman = 0;
    //  velY -= velY;
    //}
  }

  //mousePressed()
  // dispararCañon() // El personaje dispara con su cañon al presionar el click del mouse
}
