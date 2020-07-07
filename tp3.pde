//!IRON SOLDIER: TONY STARK¡ Por: Marcos E. Juárez Agüero

//IMAGENES PRINCIPALES
PImage pantalla1, pantalla2, pantalla3, pantalla4, pantalla5, pantalla6, pantalla7, pantalla8, pantalla9, pantalla10, pantalla11, pantalla12, pantalla13, pantalla14, 
  pantalla15;
//IMAGENES DECORATIVAS  
PImage cursor, opcion, cuadrodialogo, cuadrodialogo2, naveficticia, aveizq, aveder, robot1, robot2, ironmanv;

//FUENTES
PFont pixel, pixel2;

//VARIBLES
float ciclovertical;
int ciclohorizontal;

//ESTADO
String estado;

//COLORES
color amarillo, blanco, rojo, negro, verde, violeta;

void setup()
{
  size(800, 600);
  surface.setLocation(300, 50);

  //Asignar valor a estado
  estado = "pantalla1";

  //Carga de imagenes == Principales
  cursor = loadImage("Mouse.png");
  pantalla1 = loadImage("Pantalla1.png");
  pantalla2 = loadImage("Pantalla2.png");
  pantalla3 = loadImage("Pantalla3.png");
  pantalla4 = loadImage("Pantalla4.png");
  pantalla5 = loadImage("Pantalla5.png");
  pantalla6 = loadImage("Pantalla6.png");
  pantalla7 = loadImage("Pantalla7.png");
  pantalla8 = loadImage("Pantalla8.png");
  pantalla9 = loadImage("Pantalla9.png");
  pantalla10 = loadImage("Pantalla10.png");
  pantalla11 = loadImage("Pantalla11.png");
  pantalla12 = loadImage("Pantalla12.png");
  pantalla13 = loadImage("Pantalla13.png");
  pantalla14 = loadImage("Pantalla14.png");
  pantalla15 = loadImage("Pantalla15.png");
  opcion = loadImage("Opcion.png");
  //Secundarias == Detalles
  cuadrodialogo = loadImage("Cuadro de dialogo.png");
  cuadrodialogo2 = loadImage("Cuadro de dialogo 2.png");
  naveficticia = loadImage("Nave ficticia.png");
  aveizq = loadImage("Ave Izq.png");
  aveder = loadImage("Ave Der.png");
  robot1 = loadImage("Bichos.png");
  robot2 = loadImage("RobotVolador.png");
  ironmanv = loadImage("Ironmanvolador.png");

  //Carga de fuentes
  pixel = createFont("UAV-OSD-Mono.ttf", 15);
  pixel2 = createFont("Vdj.ttf", 15);

  //Atributos
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  //Asignar valor a los colores
  blanco = color(255);
  negro = color(0);
  rojo = color(255, 0, 0);
  amarillo = color(#FFF40F);
  verde = color(#23FF03);
  violeta = color(#86038E);

  //Asignar valores
  ciclovertical = 50;
  ciclohorizontal = 50;
}

void draw()
{
  //Pantalla de inicio  
  if ( estado.equals("pantalla1") ) {
    //Fondo
    image(pantalla1, 400, 300);
    //Texto
    textFont(pixel2);
    fill(blanco);
    text("En algún lugar del recóndito espacio, se encuentra Tony Stark", 400, 600 + ciclovertical%800);
    text("vagando en su nave averiada, este mismo debe volver al planeta", 400, 625 + ciclovertical%800) ;
    text("tierra para poder salvar al mundo de las garras del gigante", 400, 650 + ciclovertical%800);
    text("malévolo “Thanos”, el cual tiene en mente destruir a la mitad", 400, 675 + ciclovertical%800);
    text("de la población con su guante y las gemas del infinito.", 400, 700 + ciclovertical%800);
    text("¿Estarías dispuesto a ayudar a Iron Man en tomar las decisiones", 400, 725 + ciclovertical%800);
    text("correctas? Solo tú puedes salvar el mundo.", 400, 750 + ciclovertical%800);
    //Opciones
    fill(negro);
    rect(0, 550, 800, 100);
    textFont(pixel);
    fill(amarillo);
    text("Presionar la barra espaciadora para comenzar", 400, 575);
  }

  //Pantalla 2 == Tony en la nave 
  else if ( estado.equals("pantalla2") ) {
    //Fondo
    image(pantalla2, 400, 300);
    //Imagenes
    image(opcion, 225, 550);
    image(opcion, 600, 550);
    image(cuadrodialogo, 400, 100);
    //Texto
    textFont(pixel2);
    fill(rojo);
    text("IronMan:", 175, 25);
    fill(negro);
    text("Nuestra nave tiene varios problemas", 450, 25);
    text("y no contamos con los recursos necesarios", 400, 50);
    text("para repararla… Lo único que tengo son", 400, 75);
    text("mis herramientas esenciales.", 400, 100);
    //Opciones
    textFont(pixel);
    fill(negro);
    text("Fabricar", 215, 540);
    text("teletransportacion", 215, 560);
    text("Jugar en la", 590, 540);
    text("nave", 590, 560);
  }

  //Pantalla 3 == Trabajar en la teletransportación
  else if ( estado.equals("pantalla3") ) {
    //Fondo
    image(pantalla3, 400, 300);
    //Imagenes
    image(opcion, 400, 550);
    image(cuadrodialogo, 400, 100);
    //Texto
    textFont(pixel2);
    fill(rojo);
    text("IronMan:", 200, 25);
    fill(negro);
    text("Con la ayuda de estas y mi", 425, 25);
    text("conocimiento avanzado en ingeniera, podríamos", 400, 50);
    text("utilizar mi Smartphone y crear un dispositivo", 400, 75);
    text("de teletransportación que al marcar las", 400, 100);
    text("coordenadas específicas nos envié a la tierra", 400, 125);
    //Opciones
    textFont(pixel);
    fill(negro);
    text("Marcar coordenadas", 395, 550);
  } 
  //Pantalla 4 == Pasar tiempo en la nave
  else if ( estado.equals("pantalla4") ) {
    //Fondo
    image(pantalla4, 400, 300);
    //Movimiento de la nave (jueguito) == Variable local + map
    float posx = map(mouseX, 0, width, 260, 550);
    image(naveficticia, posx, 300);
    //Imagenes 
    image(cuadrodialogo2, 400, 100);
    //Texto
    textFont(pixel2);
    fill(amarillo);
    text("IronMan:", 170, 25);
    fill(negro);
    text("Esto es muy divertido, pero creo que", 450, 25);
    text("nuestra misión es otra…", 400, 50);
    //Opciones
    fill(negro);
    rect(0, 550, 800, 100);
    textFont(pixel);
    fill(amarillo);
    text("Presiona 'R' para reiniciar", 400, 575);
  } 

  //Pantalla 5 == Tierra
  else if ( estado.equals("pantalla5") ) {
    //Fondo
    image(pantalla5, 400, 300);
    //Imagenes
    image(opcion, 225, 550);
    image(opcion, 600, 550);
    image(cuadrodialogo, 400, 175);
    //Texto
    textFont(pixel2);
    fill(rojo);
    text("IronMan:", 175, 25);
    fill(negro);
    text("Definitivamente no es como viajar en", 450, 25);
    text("Uber. Una vez aquí, se me ocurren dos", 400, 50);
    text("soluciones, La primera es construir una", 400, 75);
    text("máquina del tiempo, e intentar encontrar", 400, 100);
    text("una manera más fácil de ganar.", 400, 125);
    text("la segunda es reparar la nave con", 400, 150);
    text("la posibilidad de volver al espacio y de esta", 400, 175);
    text("manera buscar a Thanos en el universo.", 400, 200);
    //Opciones
    textFont(pixel);
    fill(negro);
    text("Fabricar", 215, 540);
    text("Maquina del tiempo", 215, 560);
    text("Arreglar la", 590, 540);
    text("nave", 590, 560);
  }

  //Pantalla 6 == Maquina del tiempo
  else if ( estado.equals("pantalla6") ) {
    //Fondo
    image(pantalla6, 400, 300);
    //Imagenes
    image(opcion, 225, 550);
    image(opcion, 600, 550);
    image(cuadrodialogo, 400, 100);
    //Texto
    textFont(pixel2);
    fill(rojo);
    text("IronMan:", 175, 25);
    fill(negro);
    text("Me alegro de haber vislumbrado los", 450, 25);
    text("avances de Emmet Brown en la ciencia", 400, 50);
    text("del tiempo. ¿Crees que deberíamos ver", 400, 75);
    text("el pasado o el futuro?", 400, 100);
    //Opciones
    textFont(pixel);
    fill(negro);
    text("Ver el", 215, 540);
    text("pasado", 215, 560);
    text("Ver el", 590, 540);
    text("futuro", 590, 560);
  }
  //Pantalla 7 == Nave
  else if ( estado.equals("pantalla7") ) {
    //Fondo
    image(pantalla7, 400, 300);
    //Imagenes
    image(opcion, 225, 550);
    image(opcion, 600, 550);
    image(cuadrodialogo, 400, 100);
    //Texto
    textFont(pixel2);
    fill(rojo);
    text("IronMan:", 175, 25);
    fill(negro);
    text("Estando en casa esto es mucho más", 450, 25);
    text("fácil… ¿Deberíamos mandar una señal a", 400, 50);
    text("los vengadores o seria mucha molestia?", 400, 75);
    //Opciones
    textFont(pixel);
    fill(negro);
    text("Viajar junto", 215, 540);
    text("a los Vengadores", 215, 560);
    text("Viajar", 590, 540);
    text("solo", 590, 560);
  }

  //Pantalla 8 == Pasado
  else if ( estado.equals("pantalla8") ) {
    //Fondo
    image(pantalla8, 400, 300);
    //Imagenes
    image(aveizq, 250 - ciclohorizontal%900, 200);
    image(aveder, 700 + ciclohorizontal%900, 200);
    image(cuadrodialogo, 400, 100);
    //Texto
    textFont(pixel2);
    fill(rojo);
    text("IronMan:", 200, 25);
    fill(negro);
    text("Esto le hubiese servido a los", 450, 25);
    text("objetivos de Jhon Hammond, pero no para", 400, 50);
    text("nuestros fines.", 400, 75);
    //Opciones
    fill(negro);
    rect(0, 550, 800, 100);
    textFont(pixel);
    fill(amarillo);
    text("Presiona 'R' para reiniciar", 400, 575);
  }
  //Pantalla 9 == Futuro
  else if ( estado.equals("pantalla9") ) {
    //Fondo
    image(pantalla9, 400, 300);
    //Imagenes
    image(opcion, 400, 550);
    image(robot1, 100 - ciclohorizontal%900, 300);
    image(robot2, 625 + ciclohorizontal%900, 300);
    image(cuadrodialogo, 400, 100);
    //Texto
    textFont(pixel2);
    fill(rojo);
    text("IronMan:", 175, 25);
    fill(negro);
    text("¿¡Qué rayos ocurrió aquí!? ¿¡Thanos", 450, 25);
    text("fue derrotado!?", 400, 50);
    //Opciones
    textFont(pixel);
    fill(negro);
    text("Ver lo que ocurrido", 395, 550);
  }

  //Pantalla 10 == Pelear junto a los Avengers
  else if ( estado.equals("pantalla10") ) {
    //Fondo
    image(pantalla10, 400, 300);
    //Imagenes
    image(opcion, 400, 550);
    image(cuadrodialogo, 400, 100);
    image(ironmanv, 875 + (ciclohorizontal%950), 200);
    //Texto
    textFont(pixel2);
    fill(rojo);
    text("IronMan:", 175, 25);
    fill(negro);
    text("¿Cuántas probabilidades tenemos de", 450, 25);
    text("ganar?", 450, 50);
    fill(verde);
    text("Dr. Strange:", 200, 75);
    fill(negro);
    text("Solo tenemos una posibilidad de", 475, 75);
    text("salir victoriosos en 14,000,605", 400, 100);
    text("futuros diferentes.", 400, 125);
    //Opciones
    textFont(pixel);
    fill(negro);
    text("Yo soy ironman", 395, 550);
  }
  //Pantalla 11 == Pelear solo
  else if ( estado.equals("pantalla11") ) {
    //Fondo
    image(pantalla11, 400, 300);
    //Imagenes
    image(opcion, 400, 550);
    image(cuadrodialogo, 400, 100);
    //Texto
    textFont(pixel2);
    fill(rojo);
    text("IronMan:", 200, 25);
    fill(negro);
    text("No tengo oportunidades contra", 450, 25);
    text("Thanos, es muy poderoso y el traje", 400, 50);
    text("está fallando.", 400, 75);
    //Opciones
    textFont(pixel);
    fill(negro);
    text("Soy inevitable", 395, 550);
  }

  //Finales
  //Final 1
  else if ( estado.equals("pantalla12") ) {
    //Fondo
    image(pantalla12, 400, 300);
    //Imagenes
    image(robot1, 100 - ciclohorizontal%900, 300);
    image(robot2, 625 + ciclohorizontal%900, 300);
    //Texto
    textFont(pixel2);
    fill(negro, 100);
    rect(0, 600 + (ciclovertical%800), 800, 200);
    fill(blanco);
    text("En un futuro muy lejano… la civilización ha progresado lo", 400, 625 + ciclovertical%800);
    text("suficiente al punto de no tener que preguntarse sobre la", 400, 650 + ciclovertical%800) ;
    text("inmortalidad, ya que estos mismos viven en cuerpos de máquinas", 400, 675 + ciclovertical%800);
    text("donde la memoria y los recuerdos se guardan en discos rígidos.", 400, 700 + ciclovertical%800);
    text("El malévolo gigante quedo hecho cenizas a causa de un resfriado,", 400, 725 + ciclovertical%800);
    text("se comenta que un tal Tony Stark generó un arma biológica que", 400, 750 + ciclovertical%800);
    text("destruyo su sistema inmunológico… Lo demás vino solo.", 400, 775 + ciclovertical%800);
    //Opciones
    image(opcion, 400, 550);
    textFont(pixel);
    fill(negro);
    text("Creditos", 395, 550);
  }
  //Final 2
  else if ( estado.equals("pantalla13") ) {
    //Fondo
    image(pantalla13, 400, 300);
    //Texto
    textFont(pixel2);
    fill(negro, 100);
    rect(0, 600 + (ciclovertical%800), 800, 200);
    fill(blanco);
    text("Posterior a una pelea sumamente reñida por parte de ambos", 400, 625 + ciclovertical%800);
    text("bandos, el grupo de héroes consiguen hacerse con la única", 400, 650 + ciclovertical%800) ;
    text("probabilidad de quedarse con la victoria… después de todo,", 400, 675 + ciclovertical%800);
    text("“Vengadores Unidos” jamás serán vencidos. De esta manera la", 400, 700 + ciclovertical%800);
    text("raza humana puede vivir en paz, progresando día a día bajo el", 400, 725 + ciclovertical%800);
    text("manto de protección de estos superhéroes.", 400, 750 + ciclovertical%800);
    //Opciones
    image(opcion, 400, 550);
    textFont(pixel);
    fill(negro);
    text("Creditos", 395, 550);
  }
  //Final 3
  else if ( estado.equals("pantalla14") ) {
    //Fondo
    image(pantalla14, 400, 300);
    //Texto
    textFont(pixel2);
    fill(negro, 100);
    rect(0, 600 + (ciclovertical%800), 800, 150);
    fill(violeta);
    text("Thanos:", 70, 650 + ciclovertical%800);
    fill(blanco);
    text("a pesar de todo fue un acto honorable por parte", 430, 650 + ciclovertical%800) ;
    text("del Sr. Stark… Una pequeña prueba de que", 400, 675 + ciclovertical%800);
    text("este humano tiene corazón.", 400, 700 + ciclovertical%800);
    //Opciones
    image(opcion, 400, 550);
    textFont(pixel);
    fill(negro);
    text("Creditos", 395, 550);
  }

  //Creditos
  else if ( estado.equals("pantalla15") ) {
    //Fondo
    image(pantalla15, 400, 300);
    //Texto
    textFont(pixel2);
    fill(negro, 100);
    rect(0, 575 + ciclovertical%800, 800, 175);
    fill(rojo);
    text("Horneado por Marcos. E. Juárez Agüero", 400, 600 + ciclovertical%800);
    fill(violeta);
    text("IDE: Processing. ", 400, 625 + ciclovertical%800) ;
    fill(blanco);
    text("Un presente para el profesor Matias Jauregui Lorda", 400, 650 + ciclovertical%800);
    text("(espero que cuando Thanos chasquee los dedos, sea", 400, 675 + ciclovertical%800);
    text("del %50 de la población que no desaparece)", 400, 700 + ciclovertical%800);
    fill(verde);
    text("Tecnologia Multimedial 1 - COM. 2 UNLP - FDA", 400, 725 + ciclovertical%800);
    //Opciones
    fill(negro);
    rect(0, 550, 800, 100);
    textFont(pixel);
    fill(amarillo);
    text("Presionar la barra espaciadora para volver comenzar", 400, 575);
  }

  //Actualizar valores == Variables globales
  ciclovertical -= 0.5;
  ciclohorizontal -= 1;

  //Cursor == Guante del infinito
  image(cursor, pmouseX, pmouseY + 25);
}


void mousePressed()
{ 
  //Creditos
  if (estado == "pantalla12" || estado == "pantalla13" || estado == "pantalla14" ) {
    if (mouseX > 265 && mouseX < 520 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla15";
    }
  }
  //Finales
  //Final 1
  if (estado == "pantalla9") {
    if (mouseX > 265 && mouseX < 520 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla12";
    }
  }
  //Final 2
  if (estado == "pantalla10") {
    if (mouseX > 265 && mouseX < 520 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla13";
    }
  }
  //Final 3
  if (estado == "pantalla11") {
    if (mouseX > 265 && mouseX < 520 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla14";
    }
  }

  //Pantalla 7 == Arreglar la nave
  if (estado == "pantalla7") {
    if (mouseX > 85 && mouseX < 345 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla10";
    } else if (mouseX > 465 && mouseX < 720 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla11";
    }
  }

  //Pantalla 6 == Máquina del tiempo
  if (estado == "pantalla6") {
    if (mouseX > 85 && mouseX < 345 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla8";
    } else if (mouseX > 465 && mouseX < 720 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla9";
    }
  }

  //Pantalla 5 == Tierra
  if (estado == "pantalla5") {
    if (mouseX > 85 && mouseX < 345 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla6";
    } else if (mouseX > 465 && mouseX < 720 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla7";
    }
  }

  //Pantalla 3 == Marca coordenadas
  if (estado == "pantalla3") {
    if (mouseX > 265 && mouseX < 520 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla5";
    }
  }

  //Pantalla 2 == Tony en la nave
  if (estado == "pantalla2") {
    if  (mouseX > 85 && mouseX < 345 && mouseY > 525 && mouseY < 575) {
      estado = "pantalla3";
    } else if ( mouseX > 465 && mouseX < 720 && mouseY > 525 && mouseY < 575 ) {
      estado = "pantalla4";
    }
  }
}

void keyPressed()
{
  //Comenzar el juego
  if (estado == "pantalla1") {
    if ( key == ' ' ) {
      estado = "pantalla2";
    }
  }

  //Reinicio
  if ( estado.equals("pantalla4") ||estado.equals("pantalla8") ) {
    if ( key == 'R' || key == 'r' ) { 
      estado = "pantalla1";
    }
  }

  ////Volver a comenzar
  if (estado == "pantalla15") {
    if ( key == ' ' ) {
      estado = "pantalla1";
    }
  }
}
