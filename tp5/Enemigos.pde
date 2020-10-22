class Enemigos {
  //ENEMIGOS SECUNDARIOS - DE FORMA AZAROSA
  // ------------------------------------------- Campos - variables (propiedades) -------------------------------------------
  float xEnemigos, yEnemigos;
  float velocidad;
  PImage enemigo; 

  // Constructor == SETUP del OBJETO
  Enemigos() {
    xEnemigos = random (825, 850);
    yEnemigos = random(50, 550);
    velocidad = random(-3, -1);
    // Cargar la imagen
    enemigo = loadImage("navesEnemigas.png");
  }
  // MOVIMIENTO de las NAVES - VOLVER al INICIO UNA VEZ FUERA de la PANTALLA
  void actualizar() { 
    xEnemigos = xEnemigos + velocidad;
    if ( xEnemigos < -100) {
      reciclar();
    }
  }
  // ------------------------------------------- Metodos - funciones (acciones) -------------------------------------------
  void dibujar() { //DRAW Del OBJETO
    image(enemigo, xEnemigos, yEnemigos);
  } 
  //ALTERAR el VALOR de las PROPIEDADES RANDOM
  void reciclar() { 
    xEnemigos = 900;
    yEnemigos = random(50, 550);
    velocidad = random(-3, -1);
  }
  //------------------------------------------- COLISIÓN (Evaluar cuando tocan al objeto = Naves enemigas) -------------------------------------------
  void destruir(Proyectil p) {
    float d = dist( xEnemigos, yEnemigos, p.xProyectil, p.yProyectil );
    if (d < yEnemigos/6 ) {
      reciclar();
    }
  }
}
