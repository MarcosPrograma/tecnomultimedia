// Trabajo Práctico N°5 | Tecnologia Multimedia 1 | Facultad de Artes | Universidad Nacional de La Plata.
// Comisión N°2 | Prof. Matias Jauregui Lorda.

// JUÁREZ AGÜERO, Marcos Emmanuel (N° de Legajo: 85165/5)
// Iron soldier: la última posibilidad. 

/* Propuesta.
Un minijuego al estilo "Space invaders", donde Iron Man (personaje principal en la aventura gráfica) concentre la pelea final contra Thanos (enemigo de la misma historia).
Iron Man tiene la posibilidad de volar (en sentido vertical) y disparar con sus cañones al enemigo; al igual que Thanos posee la oportunidad de realizar ataques con el guante del infinito, además de poder llamar ciberrobot's del universo.
La lógica se encuentra en que el protagonista dispare a los enemigos y a Thanos, antes de que lo destruyan.
Gana cuando este consigue darle "x" número de veces a Thanos (el cual se ira moviendo en sentido vertical por la pantalla), asimismo debera evitar que las naves enemigas atraviesen más de su posición en X (de Iron Man), esto generará que se bifurque en una de las decisiones de la aventura gráfica.
En caso contrario, la derrota se da cuando Thanos golpea "x" número de veces al protagonista o cuando las naves atraviesen la "posición en X" de IronMan, derivando en la otra decisión de la aventuda gráfica.   
 */
 
Juego juego; //Declarar la clase juego

void setup() {
    size(800, 600);
    juego = new Juego(); //Iniciar la clase juego
}

void draw() {
  background(0);
  //Llamo al juego
    juego.dibujar();
    juego.movimiento();
    juego.actualizar();
}
