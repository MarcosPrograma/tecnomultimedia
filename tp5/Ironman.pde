class Ironman {
  //PERSONAJE PRINCIPAL - PROTAGONISTA  
  // ------------------------------------------- Campos - variables (propiedades) -------------------------------------------
  float xIronman, yIronman;
  float velY = 2;
  PImage ironman;
  //Llamar a la otra clase
  int c = 100;
  Proyectil proyectil;

  // Constructor == SETUP del OBJETO
  Ironman() {
    xIronman = width - 700;
    yIronman = height/2;
    ironman = loadImage("ironmanVolador.png");
    proyectil = new Proyectil();
  }

  // ------------------------------------------- Metodos - funciones (acciones) -------------------------------------------
  void dibujar() { //DRAW Del OBJETO
    image(ironman, xIronman, yIronman);
    proyectil.dibujar();
  } 

  //MOVIMIENTO del Personaje == VOLAR y DESCENDER
  void volarArriba() { // Mover hacia arriba
    if ( keyCode == 'W' || keyCode == 'w') {
      if (yIronman < 80) {
      } else {
        yIronman -= velY;
      }
    }
  }
  void volarAbajo() { // Mover hacia abajo
    if ( keyCode == 'S' || keyCode == 's') {
      if (yIronman > height-80) {
      } else {
        yIronman += velY;
      }
    }
  }
  //UTILIZAR - CLASE PROYECTIL
  void dispararCanon() {
    proyectil.disparar();
  }

  //------------------------------------------- COLISIÓN (Evaluar cuando tocan al objeto = Iron-Man) -------------------------------------------
  void destruir(Enemigos[] e) {
    for ( int i = 0; i < e.length; i++ ) {
      float d = dist( xIronman, yIronman, e[i].xEnemigos, e[i].yEnemigos);
      if ( d < xIronman && d < yIronman/0.2) {
        juego.estado = "perder";
        println(juego.estado);
        //println(d);
      }
    }
  }
}
