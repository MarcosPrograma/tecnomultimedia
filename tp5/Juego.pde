class Juego {
  // Propiedades - variables
  //Lógica de estados
  String estado;
  //Fuentes e imagenes a usar
  PFont pixel, pixel2;
  PImage escenaMenu, escenaJugar, escenaPerder, escenaGanar;
  PImage opcion;
  color negro, amarillo, blanco, violeta, rojo;
  //Llamo a otras clases
  //Protagonista e enemigo principal
  Ironman jugador;
  Thanos thanos;
  // Arreglo de Enemigos == Naves enemigas
  int c = 5;
  Enemigos[] enemigos = new Enemigos[c];

  // Constructor
  Juego() {
    // Estados del juego == Inicio
    estado = "menu";
    // Inicio de los objetos - jugador, thanos, enemigos
    for ( int i = 0; i < enemigos.length; i++ ) {
      enemigos[i] = new Enemigos();
    }
    thanos = new Thanos(400);
    jugador = new Ironman();
    //Carga de imagenes
    opcion = loadImage("Opcion.png");
    escenaMenu = loadImage("escenaMenu.png");
    escenaJugar = loadImage("escena.png");
    escenaGanar = loadImage("escenaGanar.png");
    escenaPerder = loadImage("escenaPerder.png");
    //Carga de fuente
    pixel = createFont("UAV-OSD-Mono.ttf", 18);
    pixel2 = createFont("Vdj.ttf", 18);
    //Atributos de colores
    negro = color(0);
    blanco = color(255);
    rojo = color(255, 0, 0);
    amarillo = color(#FFDA05);
    violeta = color(#C106CB);
    //Atributos de alienacion
    imageMode(CENTER);
    rectMode(CENTER);
    textAlign(CENTER);
  }

  // Metodos - funciones 
  void dibujar() {
    // Comenzar con la logica de los estados
    if (estado.equals( "menu" )) { //Dentro de la aventura gráfica = Confrontación - elegir entre "Soy inevitable" o "Yo soy Iron-Man"
      image(escenaMenu, width/2, height/2);
      image(opcion, width/2, height/2 + 250);
      fuenteDos("Jugar", width/2, height/2 + 260, negro, 30 );
      pushStyle();
      stroke(amarillo);
      strokeWeight(3);
      fill(0);
      rect(width/2, height/2-225, 700, 180);
      fuenteDos("Entrarás en batalla contra Thanos y sus secuaces. \n Debes alejarte de sus robots ya que si tocan \n tu traje quedará inutilizable. \n Para derrotarlo pulsa el 'click derecho' \n indeterminadamente hasta conseguir vencer \n el campo de fuerza del Titán. \n Vuela y desciende con las teclas 'W' y 'S' \n ¡Suerte!", width/2, height/2 - 275, amarillo, 15 );
      popStyle();
    }
    if ( estado.equals( "jugar" ) ) {
      image(escenaJugar, width/2, height/2);
      //Dibujar a los personajes
      for ( int i = 0; i < enemigos.length; i++ ) { 
        enemigos[i].dibujar();
      }
      thanos.dibujar();
      jugador.dibujar();
    }
    if ( estado.equals( "perder" ) ) { //Dentro de la aventura gráfica = Final alternativo 3 (Pantalla 14)
      image(escenaPerder, width/2, height/2);
      pushStyle();
      stroke(amarillo);
      strokeWeight(3);
      fill(0);
      rect(width/2, height/2-230, 700, 150);
      fuenteDos("Thanos:", width/2, height/2 - 275, violeta, 15 );
      fuenteDos("a pesar de todo fue un acto \n honorable por parte del Sr. Stark… \n Una pequeña prueba de que este humano \n tiene corazón.", width/2, height/2 - 250, blanco, 15 );
      fuenteDos("By: Marcos E. Juárez Agüero", width/2 - 250, height/2 + 285, amarillo, 12);
      popStyle();
    }
    if ( estado.equals( "ganar" ) ) { //Dentro de la aventura gráfica = Final alternativo 2 (Pantalla 13)
      image(escenaGanar, width/2, height/2);
      pushStyle();
      stroke(amarillo);
      strokeWeight(3);
      fill(0);
      rect(width/2, height/2-260, 700, 100);
      fuenteDos("Iron-Man:", width/2, height/2 - 275, rojo, 15 );
      fuenteDos("He conseguido... quedarme con \n la única probabilidad... de victoria…", width/2, height/2 - 250, blanco, 15 );
      fuenteDos("By: Marcos E. Juárez Agüero", width/2 - 250, height/2 + 285, amarillo, 12);
      popStyle();
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
        //-------------------------------------------Colisión de  los objetos-------------------------------------------
        enemigos[i].destruir(jugador.proyectil); //Colisión de los enemigos contra el proyectil
      }
      thanos.destruir(jugador.proyectil); //Colisión de Thanos contra el proyectil
      jugador.destruir(enemigos); //Colisión de Ironman contra los Enemigos
    }
  }

  void mouse() { //Evento del mouse == ¡¡Colocarlo dentro de mousePressed!!
    if ( estado.equals( "jugar" ) ) {
      jugador.dispararCanon();
    }
    if ( estado == "menu" ) {
      if (mouseX > 275 && mouseX < 530 && mouseY > 525 && mouseY < 575) {
        estado = "jugar";
      }
    }
  }
}
