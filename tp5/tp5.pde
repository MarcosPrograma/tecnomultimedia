/*  
 Trabajo Práctico N°5 - Tecnologia Multimedia 1 || Facultad de Artes, Universidad Nacional de La Plata.
 Comisión N°2 || Prof. Matias Jauregui Lorda.
 Alumno = JUÁREZ AGÜERO, Marcos Emmanuel || N° de Legajo: 85165/5
 Presentación = Iron soldier: la última posibilidad. 
 */

//DECLARAR la clase juego
Juego juego; 

void setup() {
  size(800, 600);
  //INICIAR la clase juego
  juego = new Juego();
}

void draw() {
  //CONVOCAR al juego
  juego.dibujar();
  juego.movimiento();
  juego.actualizar();
}

void mousePressed() {
  //CONVOCAR los EVENTOS PARTICULARES de la clase juego
  juego.mouse();
}
