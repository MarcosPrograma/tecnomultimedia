class Juego {
  // Propiedades - variables
  String estado;
  Ironman jugador;
  Thanos thanos;
  PImage escena;
  // Arreglo de Enemigos como navesEnemigas
  int c = 5;
  Enemigos[] enemigos = new Enemigos[c];

  // Constructor
  Juego() {
    // Estados del juego
    estado = "jugar";
    // Inicio de los objetos - jugador, thanos, enemigos
    for ( int i = 0; i < enemigos.length; i++ ) {
      enemigos[i] = new Enemigos();
    }
    thanos = new Thanos(400);
    jugador = new Ironman();
    //Carga de imagenes
    escena = loadImage("escena.png");
  }

  // Metodos - funciones 
  void dibujar() {
    image(escena, width/2, height/2);
    // Comenzar con la logica de los estados
    if ( estado.equals( "jugar" ) ) {

      //Dibujar a los personajes
      for ( int i = 0; i < enemigos.length; i++ ) { 
        enemigos[i].dibujar();
      }
      thanos.dibujar();
      jugador.dibujar();
    }
  }

  void movimiento() {
    //Movimiento de ironman
    if ( estado.equals( "jugar" ) ) {
      jugador.volarArriba();
      jugador.volarAbajo();
      //Movimiento de thanos
      thanos.movimientoThanos();
    }
  }

  void actualizar() {
    if ( estado.equals( "jugar" ) ) {
      for ( int i = 0; i < enemigos.length; i++ ) { 
        //Actualizamos valores de los enemigos para volver a cargar nuevos
        enemigos[i].actualizar();
      }
    }
  }
}
