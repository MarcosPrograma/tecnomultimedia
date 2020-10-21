class Enemigos {
  //ENEMIGOS SECUNDARIOS - DE FORMA AZAROSA
  // Campos - variables (propiedades)
  float xEnemigos, yEnemigos;
  float velocidad;
  PImage enemigo; 
  // Velocidad

  // Constructor - metodo o funcion inicial
  Enemigos() {
    xEnemigos = random (825, 850);
    yEnemigos = random(50, 550);
    velocidad = random(-3, -1);
    // Cargar la imagen
    enemigo = loadImage("navesEnemigas.png");
  }

  void actualizar() { // Mover las naves y llamar a reciclar
    xEnemigos = xEnemigos + velocidad;
    //if ( xEnemigos > width/2) {
    if ( xEnemigos < -100) {
      reciclar();
      //println(velocidad);
    }
  }
  // Metodos - funciones (acciones)
  void dibujar() { // Mostrar las naves
    image(enemigo, xEnemigos, yEnemigos);
    //println(mouseY);
  } 

  void reciclar() { //Cambiar el valor de las propiedades random
    xEnemigos = 900;
    yEnemigos = random(50, 550);
    velocidad = random(-3, -1);
  }
}
