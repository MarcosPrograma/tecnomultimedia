//Variables para arrays
int cantidad = 25;
//Arrays para las pantallas
PImage[] pantalla = new PImage[15];
//Arrays para imagenes
PImage[] binarios = new PImage[cantidad];
PImage[] meteoro = new PImage[cantidad];
//Arays para animaciones
float[] x = new float[cantidad];
float[] y = new float[cantidad];
float[] t = new float[cantidad];
float[] v = new float[cantidad];

//Audio
import ddf.minim.*;
Minim gestor; 
AudioPlayer musica_fondo;

//Texto
PFont pixel, pixel2;
//Imagenes secundarias
PImage opcion, cuadroDialogo, cuadroDialogo2, naveficticia, aved, avei, robot, aliens, imvolador;

//Lógica de estado
String estado;

//Variables
float posx, posy;

//Color
color rojo, negro, amarillo, verde, violeta;

void setup() {
  size(800, 600);
  surface.setLocation(950, 150);
  //Atributos
  imageMode(CENTER);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  //Audio
  gestor = new Minim(this);
  musica_fondo = gestor.loadFile("ACDC_Shoot_to_thrill_S.mp3"); //Iron Man no es "Iron man" sin AC/DC ;)
  musica_fondo.setGain(-5); //Bajar o subir volumen
  musica_fondo.loop(); //Ciclo
  //Asigno el valor para iniciar el estado
  estado = "pantalla1";

  //Carga de imagenes (pantallas) con arrays  
  pantalla[0] = loadImage( "Pantalla1.png" );
  pantalla[1] = loadImage( "Pantalla2.png" );
  pantalla[2] = loadImage( "Pantalla3.png" );
  pantalla[3] = loadImage( "Pantalla4.png" );
  pantalla[4] = loadImage( "Pantalla5.png" );
  pantalla[5] = loadImage( "Pantalla6.png" );
  pantalla[6] = loadImage( "Pantalla7.png" );
  pantalla[7] = loadImage( "Pantalla8.png" );
  pantalla[8] = loadImage( "Pantalla9.png" );
  pantalla[9] = loadImage( "Pantalla10.png" );
  pantalla[10] = loadImage( "Pantalla11.png" );
  pantalla[11] = loadImage( "Pantalla12.png" );
  pantalla[12] = loadImage( "Pantalla13.png" );
  pantalla[13] = loadImage( "Pantalla14.png" );
  pantalla[14] = loadImage( "Pantalla15.png" );
  //Animaciones == inicio - Num. binarios
  for ( int i = 0; i < cantidad; i++ ) {
    x[i] = random(-10, width);
    y[i] = -200;
    t[i] = random( 0, 15 );
    v[i] = random( 0.1, 2.5 );
    //Imagenes
    binarios[i] = loadImage( "ceroyunos.png" );
  }
  //Animaciones == inicio - Meteoritos
  for ( int i = 0; i < cantidad; i++ ) {
    x[i] = random(-10, width);
    y[i] = -200;
    t[i] = random( 0, 15 );
    v[i] = random( 0.1, 2.5 );
    //Imagenes
    meteoro[i] = loadImage( "meteorito.png" );
  }
  //Carga de fuentes
  pixel = createFont("UAV-OSD-Mono.ttf", 18);
  pixel2 = createFont("Vdj.ttf", 18);
  //Carga de imagenes
  opcion = loadImage("Opcion.png");
  cuadroDialogo = loadImage("Cuadro de dialogo.png");
  cuadroDialogo2 = loadImage("Cuadro de dialogo 2.png");
  naveficticia = loadImage("Nave ficticia.png");
  aved = loadImage("Ave Der.png");
  avei = loadImage("Ave Izq.png");
  robot = loadImage("RobotVolador.png");
  aliens = loadImage("Bichos.png");
  imvolador = loadImage("Ironmanvolador.png");
  //Asignar valores a colores
  rojo = color(255, 0, 0);
  negro = color(0);
  amarillo = color(#FFF40F);
  verde = color(#23FF03);
  violeta = color(#86038E);
  //Asignar valores
  posx = width/2;
  posy = height/2;
}

void draw() {
  //Pantalla de inicio  
  if ( estado.equals("pantalla1") ) {
    image(pantalla[0], width/2, height/2);
    fuenteDos( "En algún lugar del recóndito espacio, se encuentra \n Tony Stark vagando en su nave averiada, \n este mismo debe volver al planeta tierra \n para poder salvar al mundo de las garras \n del gigante malévolo “Thanos”, el cual tiene \n en mente destruir a la mitad de la población \n con su guante y las gemas del infinito.", width/2, posy, 255, 18);
    fuenteDos("¿Estarías dispuesto a ayudar a Iron Man \n en tomar las decisiones correctas? \n Solo tú puedes salvar el mundo.", width/2, posy+150, 255, 18);
    //Indicador para el usuario
    fill(0);
    rect(width/2, width/2 + 175, 800, 50 );
    fuenteIndicadora("Presionar la barra espaciadora para comenzar", width/2, height/2 + 275);
    if (posy == -200) {
      posy = 1000;
    }
  } 
  //Pantalla 2 == Tony en la nave
  else if ( estado.equals("pantalla2") ) {
    image(pantalla[1], width/2, height/2);  
    image(opcion, width/2 + 200, height/2 + 250);
    image(opcion, width/2 - 200, height/2 + 250);
    image(cuadroDialogo, width/2, height/2 - 150);
    //Texto
    fuenteDos("Iron Man:", width/2 -200, height/2 - 275, rojo, 18);
    fuenteDos("Nuestra nave tiene varios problemas \n y no contamos con los recursos \n necesarios para repararla… Lo único \n que tengo son mis \n herramientas esenciales.", width/2, height/2 - 200, negro, 18);
    //Opciones
    fuenteDos("Jugar en la \n nave", width/2 + 200, height/2 + 250, negro, 15);
    fuenteDos("Fabricar \n teletransportacion", width/2 - 210, height/2 + 250, negro, 15);
  } 
  //Pantalla 3 == Trabajar en la teletransportación
  else if ( estado.equals("pantalla3") ) {
    image(pantalla[2], width/2, height/2);
    image(opcion, width/2, height/2 + 250);
    image(cuadroDialogo, width/2, height/2 - 125);
    //Texto
    fuenteDos("Iron Man:", width/2 -200, height/2 - 275, rojo, 18);
    fuenteDos("Con la ayuda de estas y mi \n conocimiento avanzado en ingeniera, \n podríamos utilizar mi Smartphone \n y crear un dispositivo de \n teletransportación que al \n marcar las coordenadas específicas \n nos envié a la tierra", width/2, height/2 - 175, negro, 18);
    //Opciones
    fuenteDos("Marcar coordenadas", width/2, height/2 + 250, negro, 15);
  } 
  //Pantalla 4 == Pasar tiempo en la nave
  else if ( estado.equals("pantalla4") ) {
    image(pantalla[3], width/2, height/2);
    image(cuadroDialogo2, width/2, height/2 - 200);
    //Movimiento de la nave (dentro del jueguito)
    float posx = map(mouseX, 0, width, 260, 550);
    image(naveficticia, posx, 300);
    //Texto
    fuenteDos("Iron Man:", width/2 -200, height/2 - 275, amarillo, 18);
    fuenteDos("Esto es muy divertido, pero \n creo que nuestra misión \n es otra…", width/2, height/2 - 225, negro, 18);
    //Opcion
    fill(0);
    rect(width/2, width/2 + 175, 800, 50 );
    fuenteIndicadora("Presionar 'R' para reiniciar", width/2, height/2 + 275);
  } 
  //Pantalla 5 == Tierra
  else if ( estado.equals("pantalla5") ) {
    image(pantalla[4], width/2, height/2);
    image(opcion, width/2 + 200, height/2 + 250);
    image(opcion, width/2 - 200, height/2 + 250);
    image(cuadroDialogo, width/2, height/2 - 75);
    //Texto
    fuenteDos("Iron Man:", width/2 -200, height/2 - 275, rojo, 18);
    fuenteDos("Definitivamente no es como viajar en \n Uber. Una vez aquí, se me ocurren dos \n soluciones, La primera es construir \n una máquina del tiempo, e \n intentar encontrar una manera más \n fácil de ganar. \n La segunda es reparar la nave con \n la posibilidad de volver al \n espacio y de esta manera buscar \n a Thanos en el universo.", width/2, height/2 - 150, negro, 18);
    //Opcion
    fuenteDos("Arreglar la \n nave", width/2 + 200, height/2 + 250, negro, 15);
    fuenteDos("Fabricar \n  maquina del tiempo", width/2 - 210, height/2 + 250, negro, 15);
  } 
  //Pantalla 6 == Maquina del tiempo
  else if ( estado.equals("pantalla6") ) {
    image(pantalla[5], width/2, height/2);
    image(opcion, width/2 + 200, height/2 + 250);
    image(opcion, width/2 - 200, height/2 + 250);
    image(cuadroDialogo, width/2, height/2 - 150);
    //Texto
    fuenteDos("Iron Man:", width/2 -200, height/2 - 275, rojo, 18);
    fuenteDos("Me alegro de haber vislumbrado \n los avances de Emmet Brown \n en la ciencia del tiempo. \n ¿Crees que deberíamos ver \n el pasado o el futuro?", width/2, height/2 - 200, negro, 18);
    //Opciones
    fuenteDos("Ver el futuro", width/2 + 200, height/2 + 250, negro, 15);
    fuenteDos("Ver el pasado", width/2 - 210, height/2 + 250, negro, 15);
  } 
  //Pantalla 7 == Nave
  else if ( estado.equals("pantalla7") ) {
    image(pantalla[6], width/2, height/2);
    image(opcion, width/2 + 200, height/2 + 250);
    image(opcion, width/2 - 200, height/2 + 250);
    image(cuadroDialogo, width/2, height/2 - 175);
    //Texto
    fuenteDos("Iron Man:", width/2 -200, height/2 - 275, rojo, 18);
    fuenteDos("Estando en casa esto es mucho \n más fácil… \n ¿Deberíamos mandar una señal \n a los vengadores o seria \n mucha molestia?", width/2, height/2 - 200, negro, 18);
    //Opcion
    fuenteDos("Viajar \n solo", width/2 + 200, height/2 + 250, negro, 15);
    fuenteDos("Viajar junto \n a los Vengadores ", width/2 - 210, height/2 + 250, negro, 15);
  } 
  //Pantalla 8 == Pasado
  else if ( estado.equals("pantalla8") ) {
    image(pantalla[7], width/2, height/2);
    image(aved, posx + 250, height/2 - 100);
    image(aved, posx + 300, height/2 + 25);
    if (posx == -500) {
      posx = 500;
    }
    //Actualización == Animacion de meteoritos
    for ( int i = 0; i < cantidad; i++ ) {
      y[i] = y[i] + t[i];
      if ( y[i] > height + t[i]/2 + 115 ) {
        reciclar( i );
      }
    }
    //Dibujar == Animacion de meteoritos
    for ( int j = 0; j < cantidad; j++ ) {
      image( meteoro[j], x[j], y[j] );
    }
    image(cuadroDialogo, width/2, height/2 - 175);
    //Texto
    fuenteDos("Iron Man:", width/2 -200, height/2 - 275, rojo, 18);
    fuenteDos("Esto le hubiese servido \n a los objetivos de Jhon Hammond, \n pero no para nuestros fines.", width/2, height/2 - 215, negro, 18);
    //Opciones
    fill(0);
    rect(width/2, width/2 + 175, 800, 50 );
    fuenteIndicadora("Presionar 'R' para reiniciar", width/2, height/2 + 275);
  } 
  //Pantalla 9 == Futuro
  else if ( estado.equals("pantalla9") ) {
    image(pantalla[8], width/2, height/2);
    image(robot, posx + 225, height/2);
    if (posx == -500) {
      posx = 500;
    }
    image(opcion, width/2, height/2 + 250);
    //Actualización == Animacion - lluvia de binarios
    for ( int i = 0; i < cantidad; i++ ) {
      y[i] = y[i] + t[i];
      if ( y[i] > height + t[i]/2 + 130 ) {
        reciclar( i );
      }
    }
    //Dibujar == Animacion - lluvia de binarios
    for ( int j = 0; j < cantidad; j++ ) {
      image( binarios[j], x[j], y[j] );
    }
    image(cuadroDialogo, width/2, height/2 - 200);
    //Texto
    fuenteDos("Iron Man:", width/2 -200, height/2 - 275, rojo, 18);
    fuenteDos("¿¡Qué rayos ocurrió aquí!? \n ¿¡Thanos fue derrotado!?", width/2, height/2 - 225, negro, 18);
    //Opcion
    fuenteDos("Ver lo ocurrido", width/2, height/2 + 250, negro, 15);
  } 
  //Pantalla 10 == Pelear junto a los Avengers
  else if ( estado.equals("pantalla10") ) {
    image(pantalla[9], width/2, height/2);
    image(imvolador, posx + 350, height/2 - 100);
    if (posx == -600) {
      posx = 500;
    }
    image(opcion, width/2, height/2 + 250);
    image(cuadroDialogo, width/2, height/2 - 150);
    //Textos
    fuenteDos("Iron Man:", width/2 -200, height/2 - 275, rojo, 18);
    fuenteDos("¿Cuántas probabilidades \n tenemos de ganar?", width/2 + 50, height/2 - 265, negro, 18);
    fuenteDos("Dr. Strange:", width/2 -200, height/2 - 225, verde, 18);
    fuenteDos("Solo tenemos una \n posibilidad de salir \n victoriosos en \n 14,000,605 futuros \n diferentes.", width/2 + 35, height/2 - 185, negro, 18);
    //Opcion
    fuenteDos("Yo soy Iron Man", width/2, height/2 + 250, negro, 15);
  } 
  //Pantalla 11 == Pelear solo
  else if ( estado.equals("pantalla11") ) {
    image(pantalla[10], width/2, height/2);
    image(opcion, width/2, height/2 + 250);
    image(cuadroDialogo, width/2, height/2 - 200);
    //Texto
    fuenteDos("Iron Man:", width/2 -200, height/2 - 275, rojo, 18);
    fuenteDos("No tengo oportunidades \n contra Thanos, es muy \n poderoso y el traje \n está fallando.", width/2, height/2 - 220, negro, 18);
    //Opciones
    fuenteDos("Soy inevitable", width/2, height/2 + 250, negro, 15);
  } 
  //-------------------------------------Finales------------------------------------- 
  //Pantalla 12 == Final alternativo 1
  else if ( estado.equals("pantalla12") ) {
    image(pantalla[11], width/2, height/2);
    image(robot, posx + 225, height/2);
    if (posx == -500) {
      posx = 500;
    }
    image(opcion, width/2, height/2 + 250);
    //Actualización == Animacion - lluvia de binarios
    for ( int i = 0; i < cantidad; i++ ) {
      y[i] = y[i] + t[i];
      if ( y[i] > height + t[i]/2 + 130 ) {
        reciclar( i );
      }
    }
    //Dibujar == Animacion - lluvia de binarios
    for ( int j = 0; j < cantidad; j++ ) {
      image( binarios[j], x[j], y[j] );
    }
    //Texto
    fill(negro, 100);
    rect(width/2, posy, 800, 299);
    fuenteDos("En un futuro muy lejano… la civilización \n ha progresado lo suficiente al punto \n de no tener que preguntarse sobre la \n inmortalidad, ya que estos mismos viven en \n cuerpos de máquinas donde la memoria y \n los recuerdos se guardan en discos rígidos. \n El malévolo gigante quedo hecho cenizas \n a causa de un resfriado, se comenta que \n un tal Tony Stark generó un arma biológica que \n destruyo su sistema inmunológico… \n Lo demás vino solo.", width/2, posy, 255, 18);  
    if (posy == -200) {
      posy = 800;
    }
    //Opciones
    fuenteDos("Creditos", width/2, height/2 + 250, negro, 15);
  } 
  //Pantalla 13 == Final alternativo 2
  else if ( estado.equals("pantalla13") ) {
    image(pantalla[12], width/2, height/2);
    image(opcion, width/2, height/2 + 250);
    //Texto
    fill(negro, 100);
    rect(width/2, posy, 800, 299);
    fuenteDos("Posterior a una pelea sumamente \n reñida por parte de ambos bandos, \n el grupo de héroes consiguen hacerse con \n la única probabilidad de quedarse con la victoria… \n después de todo, \n “Vengadores Unidos” jamás serán vencidos. \n De esta manera la raza humana puede vivir en paz, \n progresando día a día bajo el manto de protección \n de estos superhéroes.", width/2, posy, 255, 18);
    if (posy == -200) {
      posy = 1000;
    }
    //Opciones
    fuenteDos("Creditos", width/2, height/2 + 250, negro, 15);
  } 
  //Pantalla 14 == Final alternativo 3
  else if ( estado.equals("pantalla14") ) {
    image(pantalla[13], width/2, height/2);
    image(opcion, width/2, height/2 + 250);
    //Texto
    fill(negro, 100);
    rect(width/2, posy, 800, 175);
    fuenteDos("Thanos:", width/2, posy - 60, violeta, 18);
    fuenteDos("a pesar de todo fue un acto \n honorable por parte del Sr. Stark… \n Una pequeña prueba de que este humano \n tiene corazón.", width/2, posy, 255, 18);
    if (posy == -200) {
      posy = 1000;
    }
    //Opciones    
    fuenteDos("Creditos", width/2, height/2 + 250, negro, 15);
  } 
  //Pantalla 15 == Créditos
  else if ( estado.equals("pantalla15") ) {
    image(pantalla[14], width/2, height/2);
    //Texto
    fill(negro, 100);
    rect(width/2, posy, 800, 250);
    fuenteDos("Horneado por Marcos. E. Juárez Agüero", width/2, posy - 100, rojo, 18);
    fuenteDos("IDE: Processing.", width/2, posy - 50, violeta, 18);
    fuenteDos("Un presente para el profesor Matias Jauregui Lorda \n (espero que cuando Thanos chasquee los dedos, \n sea del %50 de la población que no desaparece)", width/2, posy + 25, 255, 18);
    fuenteDos("Tecnologia Multimedial 1 - COM. 2 UNLP - FDA", width/2, posy + 100, verde, 18);
    if (posy == -200) {
      posy = 1000;
    }
    //Opciones
    fill(0);
    rect(width/2, width/2 + 175, 800, 50 );
    fuenteIndicadora("'barra espaciadora' para volver a comenzar", width/2, height/2 + 275);
  }

  //Actualizar valores
  posy -= 1;
  posx -= 5;
  println(posy);
}

void mousePressed() {
  //Creditos
  if (estado == "pantalla12" || estado == "pantalla13" || estado == "pantalla14" ) {
    if (mouseX > 265 && mouseX < 520 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla15";
      posy = -200;
      posx = -200;
    }
  }
  //Finales
  //Final 1
  if (estado == "pantalla9") {
    if (mouseX > 265 && mouseX < 520 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla12";
      posy = -200;
      posx = -200;
    }
  }
  //Final 2
  if (estado == "pantalla10") {
    if (mouseX > 265 && mouseX < 520 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla13";
      posy = -200;
      posx = -200;
    }
  }
  //Final 3
  if (estado == "pantalla11") {
    if (mouseX > 265 && mouseX < 520 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla14";
      posy = -200;
      posx = -200;
    }
  }

  //Pantalla 7 == Arreglar la nave
  if (estado == "pantalla7") {
    if (mouseX > 85 && mouseX < 345 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla10";
      posy = -200;
      posx = -200;
    } else if (mouseX > 465 && mouseX < 720 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla11";
      posy = -200;
      posx = -200;
    }
  }

  //Pantalla 6 == Máquina del tiempo
  if (estado == "pantalla6") {
    if (mouseX > 85 && mouseX < 345 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla8";
      posy = -200;
      posx = -200;
    } else if (mouseX > 465 && mouseX < 720 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla9";
      posy = -200;
      posx = -200;
    }
  }

  //Pantalla 5 == Tierra
  if (estado == "pantalla5") {
    if (mouseX > 85 && mouseX < 345 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla6";
      posy = -200;
      posx = -200;
    } else if (mouseX > 465 && mouseX < 720 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla7";
      posy = -200;
      posx = -200;
    }
  }

  //Pantalla 3 == Marca coordenadas
  if (estado == "pantalla3") {
    if (mouseX > 265 && mouseX < 520 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla5";
      posy = -200;
      posx = -200;
    }
  }

  //Pantalla 2 == Tony en la nave
  if (estado == "pantalla2") {
    if  (mouseX > 85 && mouseX < 345 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla3";
      posy = -200;
      posx = -200;
    } else if ( mouseX > 465 && mouseX < 720 && mouseY > 525 && mouseY < 575 ) {
      estado = "pantalla4";
      posy = -200;
      posx = -200;
    }
  }
}

void keyPressed()
{
  //Pantalla 1 == Dar comienzo
  if (estado == "pantalla1") {
    if ( key == ' ' ) {
      estado = "pantalla2";
      posy = -200;
      posx = -200;
      println("Las variables se resetearon");
    }
  }
  //Reinicio
  if ( estado.equals("pantalla4") ||estado.equals("pantalla8") ) {
    if ( key == 'R' || key == 'r' ) { 
      estado = "pantalla1";
      posy = -200;
      posx = -200;
      println("Las variables se resetearon");
    }
  }
  //Volver a comenzar
  if (estado == "pantalla15") {
    if ( key == ' ' ) {
      estado = "pantalla1";
      posy = -200;
      posx = -200;
      println("Las variables se resetearon");
    }
  }
}
