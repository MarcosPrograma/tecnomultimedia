class Enemigos {
  //ENEMIGOS SECUNDARIOS - DE FORMA AZAROSA
  // Campos - variables (propiedades)
  float xEnemigos, yEnemigos;
  float velocidad;
  PImage enemigo; 
  // Velocidad

  // Constructor - metodo o funcion inicial
  Enemigos() {
    //xEnemigos = 500;
    //yEnemigos = 200;
    xEnemigos = random (825, 850);
    yEnemigos = random(1, 600);
    velocidad = random(-1, -3);
    //velocidad = random(-1, -3);
    // Cargar la imagen
    enemigo = loadImage("enemigos.png");
  }

  void actualizar() { // Mover las naves y llamar a reciclar
    xEnemigos = xEnemigos + velocidad;
    if ( xEnemigos > width) {
      reciclar();
    }
  }
  // Metodos - funciones (acciones)
  void dibujar() { // Mostrar las naves
    image(enemigo, xEnemigos, yEnemigos);
    println(mouseY);
  } 

  void reciclar() { //Cambiar el valor de las propiedades random
    xEnemigos = 850;
    yEnemigos = random(height);
    velocidad = random(-1, -3);
  }
}
