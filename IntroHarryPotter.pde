//Imagenes
PImage nubes;
PImage warnerBros;

//Letra
PFont letraHarryP;
float tamTexto;
float tamTexto2; 

//Aditivos
int transparenciaImagen;
float transparenciaTextos;
float tamImagen;
color amarillo;

void setup()
{
  size(400,400);
  
//Carga de archivos  
  letraHarryP = loadFont("HarryP-100.vlw");  
  nubes = loadImage("Nubes.png");
  warnerBros = loadImage("WarnerBros.png");
  
//Texto e imagenes
  textFont(letraHarryP);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  
//Figura
  rectMode(CENTER);
  
//Color
amarillo = color(225,200,0);
  
//Datos
  tamTexto = 100;
  tamTexto2 = 75;
  transparenciaTextos = 0.1;
  transparenciaImagen = 255;
  tamImagen = 400;
}

void draw()
{
  background(nubes);

//Destello
fill(frameCount, 25);  
rect(200,200,400,400);
fill(frameCount*2, 25);  
rect(200,200,400,400);
fill(frameCount*4, 25);  
rect(200,200,400,400);

tint(255, 255, 255, +transparenciaImagen);
image(warnerBros, 200, 200, tamImagen, tamImagen);

//Texto  
  fill(amarillo, -transparenciaTextos);
  textSize(tamTexto);
  textAlign(CENTER, CENTER);
  text("Harry Potter", 200, 180, - tamTexto);
  textSize(tamTexto2);
  textAlign(CENTER, TOP);
  text("y el misterio de", 275, 215, - tamTexto2);
  text("Tecnologia", 275, 260, - tamTexto2);
  
//Actualización de datos
  tamImagen -= 1.9;
  transparenciaImagen -= 5;
  transparenciaTextos -= 0.3;
  tamTexto = tamTexto - 0.1;
  tamTexto2 = tamTexto2 - 0.1;
  frameCount = frameCount + 4;

//Imprimir ubicación del mouse en la consola 
println(mouseX, mouseY);  
}
