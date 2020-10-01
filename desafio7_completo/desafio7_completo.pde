//Ojos a la derecha
int c = 5; //Cantidad de objetos

Eye[] e = new Eye[c];

void setup() {
  size(800, 800);
  
  for (int i = 0; i < c; i++) {
    e[i] = new Eye (50);
  }
}

void draw() {
  background(175);
  
  for (int i = 0; i < c; i++) {
    e[i].dibujar(e);
    e[i].mov(4); //Seleccionar velocidad de movimiento
    e[i].volver();
  }
}
