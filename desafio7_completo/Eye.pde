class Eye {
  //Propiedades = Variables
  float x;
  float diametro;
  float colores;

  //Constructor
  Eye(float d) {
    x = random(width);
    diametro = d;
    colores = random(150, 255);
  }

  //Dibujar
  void dibujar(Eye[] e) {
    for (int i = 0; i < e.length; i++ ) { 
      fill(255);
      ellipse(x, height/2, diametro*3, diametro*3);
      fill(colores);
      ellipse(x, height/2, diametro*2, diametro*2);
      fill(0);
      ellipse(x, height/2, diametro, diametro);
    }
  }

  //Velocidad y movimiento
  void mov(float v) {
    x += v;
  }

  //Volver a aparecer
  void volver() {
    if (x > width + (diametro*3)) { //Si paso el lado derecho
      x = -50; //Vuelvo a salir por la izquierda
    }
  }
}
