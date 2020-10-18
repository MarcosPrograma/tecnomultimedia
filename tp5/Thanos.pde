class Thanos {
  //ENEMIGO PRINCIPAL  
  // Campos - variables (propiedades)
  float xThanos, yThanos;
  float movThanos, velThanos;
  float velY=1;
  PImage thanos;

  // Constructor - metodo o funcion inicial
  Thanos(float y) {
    xThanos = 700;
    yThanos = y;
    thanos = loadImage("Thanos.png");
  }

  // Metodos - funciones (acciones)
  void dibujar() { // Mostrar al enemigo
    image(thanos, xThanos, yThanos);
  }

  // Movimiento
  void movimientoThanos() {
    yThanos = yThanos+velY;
    if (yThanos > height - 100) {  // Si toca abajo 
      yThanos = height - 100;
      velY=-velY;
    } else if (yThanos < 100) {  // Si toca arriba
      yThanos = 100;
      velY=-velY;
    }
  }

  //velocidadThanos() //Cada vez que un proyectil de IronMan lo golpee, este aumenta la velocidad de su movimiento
}
