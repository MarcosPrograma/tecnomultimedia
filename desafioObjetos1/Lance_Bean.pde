class Lancebean {
  //Variables y arreglos
  PImage lb1;
  float posx, posy;

  Lancebean( float x_, float y_) {
    posx = x_;
    posy = y_ ;
    lb1 = loadImage("cc01.png");
  }

  void mostrar() {
    lb1.resize(100, 100);
    image(lb1, posx, posy);
  }

  void moverDer() {
    if ( keyCode == RIGHT ) {
      posx += 15;
    } else      if ( key == 'R' || key == 'r' ) {
      posx = 100;
    }
  }
}
