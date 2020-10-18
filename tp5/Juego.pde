class Juego {
  // Propiedades - variables
  String estado;
  Ironman jugador;
  Thanos thanos;
  // Arreglo de Enemigos como navesEnemigas
  int c = 5;
  Enemigos[] enemigos = new Enemigos[c];

  // Constructor
  Juego() {
    // Estados del juego
    estado = "jugar";
    // Inicio de los objetos - jugador, thanos, enemigos
    thanos = new Thanos(400);
    jugador = new Ironman();
    for ( int i = 0; i < c; i++ ) {
      enemigos[i] = new Enemigos();
    }
    imageMode(CENTER);
  }

  // Metodos - funciones 
  void dibujar() {
    // Comenzar con la logica de los estados
    if ( estado.equals( "jugar" ) ) {
      //Dibujar a los personajes
      thanos.dibujar();
      jugador.dibujar();
      for ( int i = 0; i < c; i++ ) { 
        enemigos[i].dibujar();
      }
    }
  }

  void movimiento() {
    //Movimiento de ironman
    jugador.volarArriba();
    jugador.volarAbajo();
    //Movimiento de thanos
    thanos.movimientoThanos();
  }

  void actualizar() {
    if ( estado.equals( "jugar" ) ) {
      for ( int i = 0; i < c; i++ ) { 
        //Actualizamos valores de los enemigos para volver a cargar nuevos
        enemigos[i].actualizar();
      }
    }
  }
}
