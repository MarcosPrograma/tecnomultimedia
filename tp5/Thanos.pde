class Thanos {
  //ENEMIGO PRINCIPAL  
  // ------------------------------------------- Campos - variables (propiedades) -------------------------------------------
  float xThanos, yThanos;
  float movThanos, velThanos;
  float velY=1; 
  PImage thanos;

  // Constructor == SETUP del OBJETO
  Thanos(float y) {
    xThanos = 700;
    yThanos = y;
    thanos = loadImage("Thanos.png");
  }

  // ------------------------------------------- Metodos - funciones (acciones) -------------------------------------------
  void dibujar() { //DRAW Del OBJETO
    image(thanos, xThanos, yThanos);
  }

  // Movimiento del Personaje = REBOTE
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

  //------------------------------------------- COLISIÓN (Evaluar cuando tocan al objeto = Thanos) -------------------------------------------
  void destruir(Proyectil p) { 
    float d = dist( xThanos, yThanos, p.xProyectil, p.yProyectil );
    if (d < xThanos/6 && d < yThanos/2.5 ) {
      juego.estado = "ganar";
      println(juego.estado);
    }
  }
}
