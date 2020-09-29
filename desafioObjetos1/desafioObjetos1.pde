//Contra 1 - ¡Colgue en chequear el foro!

Lancebean lb;

void setup() {
  size(800, 800);
  lb = new Lancebean(25, 400);
}

void draw() {
  background(0);
  lb.mostrar();
}

void keyPressed() {
  lb.moverDer(); //"R" para volver a la posición inicial
}
