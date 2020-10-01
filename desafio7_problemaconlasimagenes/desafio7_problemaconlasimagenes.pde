int c = 1;
//Declaro arreglo
Stick[] stick = new Stick[c];

void setup() {
  size(400, 400);

  //Creación del objeto 
  for (int i = 0; i < stick.length; i++) {
    stick[i] = new Stick (100, 100, i);
  }
}

void draw() {
  for (int i = 0; i < stick.length; i++) {
    stick[i].dibujar();
    stick[i].mov();
  }
}
