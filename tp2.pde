//¡CREDITOS MINECRAFT!
//Letra
PFont minecraft;

//Imagen
PImage fondo,titulo;

//Fondo-Ciclo
float ciclo;

//Titulo
int ubicacion;
//Titulo creditos
String iguales; 
String tituloCreditos;

//Pantalla final
float ascender;

//Texto
int posx, posy;

//Colores
color celeste, verde, blanco, gris, amarillo, negro;

void setup(){
  size(1000, 800);
  
//Creación y carga de archivo  
  minecraft = createFont("Minecraftia-Regular.ttf", 25);
  fondo = loadImage("FondoTierra2.png");
  titulo = loadImage("MinecraftTitulo.png");
  
//Atributos
  imageMode(CENTER);
  rectMode(CENTER);
  celeste = color(#1880ED);
  verde = color(#00C404);
  amarillo = color(#FBFF8B);
  gris = color(175);
  blanco = color(255);
  negro = color(0);
  
//Asignacion de datos
  ciclo = 6000;
  ubicacion = 800 ;
  posx = 160;
  posy = 1000;
  ascender = 0.1;
  iguales = "============";
  tituloCreditos = "Minecraft Team";
}

void draw(){
  
//Fondo-Ciclo
  imageMode(CENTER);
  image(fondo, 500, ciclo %500);
  println(ciclo);

//Titulo - Logo de Minecraft
  image(titulo,500, ubicacion);

//Dialogo
//Texto: End - Creditos 
  textFont(minecraft);
  textAlign(CORNER);
  fill(celeste);
  text("¿A Max Power?", posx, posy);
  fill(verde);
  text("Sí. Ten cuidado. Ha alcanzado un nivel más alto.", posx, posy + 100);
  text("Puede leer nuestros pensamientos.", posx, posy + 150);
  fill(celeste);
  text("Eso no importa. Cree que somos parte del juego.", posx, posy + 250);
  fill(verde);
  text("Me gusta este jugador. Ha jugado bien.", posx, posy + 350);
  text("No se ha rendido.", posx, posy + 400);
  fill(celeste);
  text("Está leyendo nuestros pensamientos", posx, posy + 500);
  text("como si fueran palabras en una pantalla.", posx, posy + 550);
  fill(verde);
  text("Es así como escoge imaginar muchas cosas,", posx, posy + 650);
  text("cuando está profundamente sumido en el sueño", posx, posy + 700);
  text("de un juego.", posx, posy + 750);
  fill(celeste);
  text("Las palabras son una hermosa interfaz", posx, posy + 850);
  text("Muy flexible. Y menos terrible que contemplar", posx, posy + 900);
  text("la realidad detrás de la pantalla.", posx, posy + 950);
  fill(verde);
  text("Ellos solían escuchar voces. ", posx, posy + 1050);
  text("Antes que los jugadores pudiesen leer.", posx, posy + 1100);
  text("En aquellos días cuando los que no podían jugar", posx, posy + 1150);
  text("llamaban brujos a los jugadores.", posx, posy + 1200);
  text("Y los jugadores soñaron que volaban por los aires,", posx, posy + 1250);
  text("sobre palos alimentados por demonios.", posx, posy + 1300);
  fill(celeste);
  text("¿Con qué soñó este jugador?", posx, posy + 1400);
  fill(verde);
  text("Este jugador soñó con la luz del sol y con los árboles.", posx, posy + 1500);
  text("Con fuego y agua. Soñó que creó. Y soñó que destruyó.", posx, posy + 1550);
  text("Soñó que cazó, y que fue cazado. Soñó con un refugio.", posx, posy + 1600);
  fill(celeste);
  text("Ah, la interfaz original.", posx, posy + 1700);
  text("Tiene un millón de años, y todavía funciona.", posx, posy + 1750);
  text("¿Pero qué estructura real creó este jugador,", posx, posy + 1800);
  text("detrás de la pantalla?", posx, posy + 1850);
  fill(verde);
  text("Trabajó. Junto a otros millones,", posx, posy + 1950);
  text("para esculpir un mundo real dentro del pliegue de FDA,", posx, posy + 2000);
  text("y creó un programa para Tecnología, en Processing.", posx, posy + 2050);
  fill(celeste);
  text("No puede leer ese pensamiento.", posx, posy + 2150);
  fill(verde);
  text("No, aún no alcanzó el nivel más alto.", posx, posy + 2250);
  text("Aquel, que debe alcanzar en el largo sueño de la vida,", posx, posy + 2300);
  text("no en el corto sueño de un juego.", posx, posy + 2350);
  fill(celeste);
  text("¿Sabe que lo amamos? ¿Que el universo es bueno?", posx, posy + 2450);
  fill(verde);
  text("A veces, a través del ruido de sus pensamientos,", posx, posy + 2550);
  text("escucha al universo, sí.", posx, posy + 2600);
  fill(celeste);
  text("Pero hay momentos en los que está triste,", posx, posy + 2700);
  text("en el sueño largo. Crea mundos que no tienen verano,", posx, posy + 2750);
  text("y tiembla debajo de un sol negro, y toma su triste", posx, posy + 2800);
  text("creación como real.", posx, posy + 2850);
  fill(verde);
  text("Curarle de la pena lo destruirá. La pena es parte", posx, posy + 2950); 
  text("de su propia tarea privada. No podemos interferir.", posx, posy + 3000); 
  fill(celeste);
  text("A veces cuando están sumergidos en sus sueños,", posx, posy + 3100);
  text("quisiera decirles, ellos construyen mundos tangibles", posx, posy + 3150);
  text(" en la realidad. A veces quiero contarles sobre ", posx, posy + 3200);
  text("su importancia en el universo. A veces, cuando no ", posx, posy + 3250);
  text("tienen una conexión real por un tiempo, quiero", posx, posy + 3300);
  text("ayudarles a decir la palabra a la que temen.", posx, posy + 3350);  
  fill(verde);
  text("Está leyendo nuestros pensamientos.", posx, posy + 3450); 
  fill(celeste);
  text("A veces no me importa. A veces desearía decirles,", posx, posy + 3550);
  text("que este mundo que toman por real es sólamente ficticio", posx, posy + 3600);
  text("y virtual, me gustaría decirles que son hormigas", posx, posy + 3650);
  text("en FDA Ven tan poco de lo real en su largo sueño.", posx, posy + 3700);
  fill(verde);
  text("Y todavía juegan.", posx, posy + 3800); 
  fill(celeste);
  text("Pero sería tan fácil decirles…", posx, posy + 3900);
  fill(verde);
  text("Demasiado fuerte para este sueño.", posx, posy + 4000); 
  text("Decirles cómo vivir es impedirles la vida.", posx, posy + 4050); 
  fill(celeste);
  text("No le diré al jugador cómo vivir.", posx, posy + 4150);
  fill(verde);
  text("El jugador se está inquietando.", posx, posy + 4250);
  fill(celeste);
  text("Le contaré una historia al jugador.", posx, posy + 4350);
  fill(verde);
  text("Pero no la verdad.", posx, posy + 4450);
  fill(celeste);
  text("No. Una historia que contenga a la verdad de una", posx, posy + 4550);
  text("forma segura, en una celda de palabras.", posx, posy + 4600);  
  text("No la verdad desnuda que puede quemar", posx, posy + 4650); 
  text("a cualquier distancia.", posx, posy + 4700);
  fill(verde);
  text("Dale un cuerpo, otra vez.", posx, posy + 4800);
  fill(celeste);
  text("Sí. Jugador…", posx, posy + 4900);
  fill(verde);
  text("Usa su nombre.", posx, posy + 5000);
  fill(celeste);
  text("Max Power. Jugador de juegos.", posx, posy + 5100);
  fill(verde);
  text("Bien.", posx, posy + 5200);
  fill(celeste);
  text("Respira, ahora. Otra vez. Siente el aire", posx, posy + 5300);
  text("en tus pulmones. Deja que tus extremidades regrese.", posx, posy + 5350);
  text("Sí, mueve tus dedos. Ten un cuerpo otra vez,", posx, posy + 5400);
  text("bajo la gravedad, en el aire. Renace en el sueño", posx, posy + 5450);
  text("largo. Ahí estás. Tu cuerpo toca al universo", posx, posy + 5500);
  text("otra vez en cada punto, como si fueran cosas", posx, posy + 5550);
  text("separadas. Como si fuéramos cosas separadas.", posx, posy + 5600);
  fill(verde);
  text("¿Quiénes somos? Una vez nos llamaron el espíritu ", posx, posy + 5700);
  text("de la montaña. Padre sol, madre luna.", posx, posy + 5750); 
  text("Espíritus ancestrales, espíritus animales. Genios. ", posx, posy + 5800);
  text("Fantasmas. El hombre verde. Y dioses, demonios. Ángeles.", posx, posy + 5850);
  text("Poltergeists. Alienígenas, extraterrestres. Leptones,", posx, posy + 5900);
  text("quarks. Las palabras cambian. Nosotros no cambiamos.", posx, posy + 5950);
  fill(celeste);
  text("Somos el universo. Somos todo lo que piensas", posx, posy + 6050);
  text("que no eres tú. Estás mirándonos en este momento,", posx, posy + 6100);
  text("a través de tu piel y tus ojos. ¿Y por qué el universo", posx, posy + 6150);
  text("toca tu piel, y te ilumina? Para verte, jugador.", posx, posy + 6200);
  text("Para conocerte. Y para ser conocido. Te contaré", posx, posy + 6250);
  text("una historia. Había una vez un jugador.", posx, posy + 6300);
  fill(verde);
  text("El jugador eras tú, Max Power.", posx, posy + 6400);
  fill(celeste);
  text("A veces pensaba que era humano, sobre la delgada", posx, posy + 6500);
  text("corteza de un globo giratorio de roca fundida.", posx, posy + 6550);
  text("La bola de roca fundida rodeó a una bola de gas", posx, posy + 6600);
  text("que era trescientos treinta mil veces más masiva", posx, posy + 6650);
  text("que ella. Estuvieron tan lejos que la luz tardaba", posx, posy + 6700);
  text("ocho minutos en atravesar la distancia. La luz era", posx, posy + 6750);
  text("información de una estrella, y podía quemar tu piel", posx, posy + 6800);
  text("a ciento cincuenta millones de kilómetros. A veces", posx, posy + 6850);
  text("el jugador soñaba que era un minero, en la superficie", posx, posy + 6900);
  text("de un mundo que era plano, e infinito.", posx, posy + 6950);
  text("El sol era un cuadrado blanco. Los días fueron cortos;", posx, posy + 7000);
  text("había mucho por hacer; y la muerte era un", posx, posy + 7050);
  text("inconveniente temporal", posx, posy + 7100);
  fill(verde);
  text("A veces el jugador soñaba que estaba perdido", posx, posy + 7200);
  text("en una historia.", posx, posy + 7250);
  fill(celeste);
  text("A veces el jugador soñaba que era otras cosas,", posx, posy + 7350);
  text("en otros lugares. A veces esos sueños eran", posx, posy + 7400);
  text("perturbadores. A veces muy hermosos. A veces", posx, posy + 7450);
  text("el jugador despertaba de un sueño hacia otro,", posx, posy + 7500);
  text("y despertaba de ese hacia un tercero.", posx, posy + 7550);
  fill(verde);
  text("A veces el jugador soñaba que veía palabras", posx, posy + 7650);
  text("en una pantalla.", posx, posy + 7700);
  fill(celeste);
  text("Regresemos.", posx, posy + 7800);
  fill(verde);
  text("Los átomos del jugador se esparcieron en el pasto,", posx, posy + 7900);
  text("en los ríos, en el aire, en el suelo.", posx, posy + 7950);
  text("Una mujer juntó los átomos; bebió y comió e inhaló;", posx, posy + 8000);
  text("y la mujer ensambló al jugador, en su propio cuerpo.", posx, posy + 8050);
  fill(celeste);
  text("Y el jugador despertó, del tibio, oscuro mundo", posx, posy + 8150);
  text("del cuerpo de su madre, hacia el sueño largo.", posx, posy + 8200); 
  fill(verde);
  text("Y el jugador fue una nueva historia, nunca antes", posx, posy + 8300);
  text("contada, escrita en las letras del ADN. Y el jugador", posx, posy + 8350);
  text("fue un nuevo programa, jamás antes ejecutado,", posx, posy + 8400);
  text("generado por un código fuente de un billón de años de", posx, posy + 8450);
  text("edad. Y el jugador fue un humano nuevo, que nunca", posx, posy + 8500);
  text("antes vivió, hecho de nada másque leche y amor.", posx, posy + 8550);
  fill(celeste);
  text("Tú eres el jugador. La historia. El programa.", posx, posy + 8650);
  text("El humano. Hecho de nada más que leche y amor.", posx, posy + 8700);
  fill(verde);
  text("Regresemos aún más.", posx, posy + 8800);
  fill(celeste);
  text("Los siete billones de billones de billones de átomos", posx, posy + 8900);
  text("en el cuerpo del jugador fueron creados, mucho", posx, posy + 8950);
  text("antes queeste juego, en el corazón de una estrella.", posx, posy + 9000);
  text("Así que el jugador, también, es información de una", posx, posy + 9050);
  text("estrella. Y el jugador se mueve a través de una", posx, posy + 9100);
  text("historia, la cual es un bosque de información plantada", posx, posy + 9150);
  text("por un hombre llamado Julian, en un plano, infinito", posx, posy + 9200);
  text("mundo creado por un hombre llamado Markus, que existe", posx, posy + 9250);
  text("dentro de un pequeño, privado mundo creado por el", posx, posy + 9300);
  text("jugador, quien habita un universo creado por…", posx, posy + 9350);
  fill(verde);
  text("Shhh. A veces el jugador creaba un pequeño,", posx, posy + 9450);
  text("privado mundo que era suave y tibio y simple.", posx, posy + 9500);
  text("A veces duro, y frío, y complicado. A veces", posx, posy + 9550);
  text("construía un modelo del universo en su cabeza;", posx, posy + 9600);
  text("manchas de energía, moviéndose a través devastos", posx, posy + 9650);
  text("espacios vacíos. A veces llamaba a esas manchas", posx, posy + 9700);
  text(" “electrones” y “protones”.", posx, posy + 9750);
  fill(celeste);
  text("A veces les llamaba “planetas” y “estrellas”.", posx, posy + 9850);
  fill(verde);
  text("A veces creía que estaba en un universo", posx, posy + 9950);
  text("hecho de energía que estaba hecho de", posx, posy + 10000);
  text("apagados y encendidos; ceros y unos; líneas de", posx, posy + 10050);
  text("código. A veces creía que estaba jugando un juego.;", posx, posy + 10100);
  text("A veces creía que estaba leyendo palabras", posx, posy + 10150);
  text("en una pantalla", posx, posy + 10200);
  fill(celeste);
  text("Tú eres el jugador, leyendo palabras…", posx, posy + 10300);
  fill(verde);
  text("Shhh… A veces el jugador leía líneas de código", posx, posy + 10400);
  text("en una pantalla. Las decodificaba en palabras;", posx, posy + 10450);
  text("decodificaba las palabras en significados;", posx, posy + 10500);
  text("decodificaba significados en sentimientos, emociones,", posx, posy + 10550);
  text("teorías, ideas, y el jugador empezaba a respirar", posx, posy + 10600);
  text("más rápido y más profundo y se daba cuenta que", posx, posy + 10650);
  text("estaba vivo, estaba vivo, esas miles de muertes", posx, posy + 10700);
  text("no eran reales, el jugador estaba vivo.", posx, posy + 10750);
  fill(celeste);
  text("Tú. Tú. Tú estás vivo.", posx, posy + 10850);
  fill(verde);
  text("Y a veces el jugador creía que el universo le", posx, posy + 10950);
  text("habló a través de la luz del sol que vino a través", posx, posy + 11000);
  text("de las revoloteantes hojas de los árboles de verano.", posx, posy + 11050);
  fill(celeste);
  text("Y a veces el jugador creía que el universo le habló", posx, posy + 11150);
  text("a través de la luz que sintió del fresco cielo", posx, posy + 11200);
  text("nocturno del invierno, donde una mota de luz en", posx, posy + 11250);
  text("el rabillo del ojo del jugador pudo ser una estrella", posx, posy + 11300);
  text("un millón de veces más masiva que el sol, hirviendo", posx, posy + 11350);
  text("sus planetas hasta hacerlos plasma para ser visible", posx, posy + 11400); 
  text("para el jugador por un momento, caminando hacia casa", posx, posy + 11450); 
  text("en un rincón alejado del universo, de repente", posx, posy + 11500);
  text("oliendo comida, casi delante de su familiar", posx, posy + 11550);
  text("puerta, a punto de soñar otra vez.", posx, posy + 11600);
  fill(verde);
  text("Y a veces el jugador creía que el universo le habló", posx, posy + 11700);
  text("a través de ceros y unos, a través de la electricidad", posx, posy + 11750);
  text("del mundo, a través de las palabras que se desplazan", posx, posy + 11800);
  text("por una pantalla al final de un sueño.", posx, posy + 11850);
  fill(celeste);
  text("Y el universo dijo Te amo.", posx, posy + 11950);
  fill(verde);
  text("Y el universo dijo que jugaste bien al juego.", posx, posy + 12050);
  fill(celeste);
  text("Y el universo dijo que lo único que necesitas", posx, posy + 12150);
  text(" está en ti. ", posx, posy + 12200);
  fill(verde);
  text("Y el universo dijo que tú eres más fuerte", posx, posy + 12300);
  text("de lo que sabes.", posx, posy + 12350);
  fill(celeste);
  text("Y el universo dijo que tú eres la luz del sol.", posx, posy + 12450);
  fill(verde);
  text("Y el universo dijo que tú eres la noche.", posx, posy + 12550);
  fill(celeste);
  text("Y el universo dijo que la oscuridad con la que", posx, posy + 12650);
  text("luchas está en ti.", posx, posy + 12700);
  fill(verde);
  text("Y el universo dijo que la luz que buscas está ", posx, posy + 12800);
  text("en ti.", posx, posy + 12850);
  fill(celeste);
  text("Y el universo dijo que tú no estás solo.", posx, posy + 12950);
  fill(verde);
  text("Y el universo dijo que no estás separado de", posx, posy + 13050);
  text("todas las demás cosas.", posx, posy + 13100);
  fill(celeste);
  text("Y el universo dijo que tú eres el universo", posx, posy + 13200);
  text("probándose a sí mismo, hablándose a sí mismo,", posx, posy + 13250);
  text("leyendo su propio código.", posx, posy + 13300);
  fill(verde);  
  text("Y el universo dijo Te amo, porque tú", posx, posy + 13400);
  text("eres el amor.", posx, posy + 13450);
  fill(celeste);
  text("Y el juego se terminó, y el jugador despertó", posx, posy + 13550);
  text("del sueño. Y el jugador empezó un nuevo sueño.", posx, posy + 13600);
  text("Y el jugador soñó otra vez, soñó mejor.", posx, posy + 13650);
  text("Y el jugador fue el universo. Y el jugador fue el amor.", posx, posy + 13700);
  fill(verde);
  text("Tú eres el jugador.", posx, posy + 13800);
  fill(celeste);
  text("Despierta.", posx, posy + 13900);
  
//Creditos finales
//Texto: Titulo - creditos "Minecraft Team"
  textAlign(CENTER);
  fill(blanco);
  text(iguales, width/2, posy + 14600);
  fill(amarillo);
  text(tituloCreditos, width/2, posy + 14675);
  fill(blanco);
  text(iguales, width/2, posy + 14750);
  
//Texto: MinecraftTeam creditos 
  textAlign(CORNER);
  fill(gris);
  text("Create by:", posx, posy + 14850);
  fill(blanco);
  text("Markus Persson", posx + 100, posy + 14900);
  fill(gris);
  text("Game design, programming and graphics:", posx, posy + 15000);
  fill(blanco);
  text("Markus Persson", posx + 100, posy + 15050);
  text("Jens Bergensten", posx + 100, posy + 15100);
  fill(gris);
  text("Music and sound:", posx, posy + 15200);
  fill(blanco);
  text("Daniel Rosenfeld", posx + 100, posy + 15250);
  fill(gris);
  text("Ingame artwork and paintings:", posx, posy + 15350);
  fill(blanco);
  text("Kristoffer Zetterstrand", posx + 100, posy + 15400);
  fill(gris);
  text("End game narrative:", posx, posy + 15500);
  fill(blanco);
  text("Julian Gough", posx + 100, posy + 15550);
  fill(gris);
  text("Website development:", posx, posy + 15650);
  fill(blanco);
  text("Tobias Möllstam", posx + 100, posy + 15700);
  text("Daniel Frisk", posx + 100, posy + 15750);
  text("Leonard Axelsson", posx + 100, posy + 15800);
  text("Jens Bergensten", posx + 100, posy + 15850);
  text("Markus Persson", posx + 100, posy + 15900);
  fill(gris);
  text("Logo and promotional arwork:", posx, posy + 16000);
  fill(blanco);
  text("Markus Toivonen", posx + 100, posy + 16050);
  fill(gris);
  text("Business and administration:", posx, posy + 16150);
  fill(blanco);
  text("Carl Manneh", posx + 100, posy + 16200);
  text("Daniel Kaplan", posx + 100, posy + 16250);
  fill(gris);
  text("Director of fun:", posx, posy + 16350);
  fill(blanco);
  text("Lydua Winters", posx + 100, posy + 16400);
  fill(gris);
  text("Number cruching and statistics:", posx, posy + 16500);
  fill(blanco);
  text("Patrick Geuder", posx + 100, posy + 16550);
  fill(gris);
  text("Additional programming:", posx, posy + 16650);
  fill(blanco);
  text("Paul Spooner", posx + 100, posy + 16700);
  text("Ryan 'Scaevolus' Hitchman", posx + 100, posy + 16750);
  text("Elliot 'Hippoplatimus' Segal", posx + 100, posy + 16800);  
  fill(gris);
  text("Technologies used: ", posx, posy + 16900);
  fill(blanco);
  text("Java by Oracle", posx + 100, posy + 16950);
  text("LWJGL by many talented people", posx + 100, posy + 17000);
  text("'3d Sound System' by Paul Lamb", posx + 100, posy + 17050);
  text("JOrbis by JCraft", posx + 100, posy + 17100);

//Texto: Poema-Final
  textAlign(CENTER);
  fill(blanco);
  text("'Twenty years from now you will be more disappointed", width/2, posy + 17500);
  text("bye the things that you didn´t do than by the ones", width/2, posy + 17550);
  text("you did do. So throw off the bowlines. Sail away from", width/2, posy + 17600);
  text("the safe harbor. Catch the irade winds in your sails.", width/2, posy + 17650);
  text("Explore. Dream. Discover'", width/2 - 50, posy + 17700);
  fill(gris);
  text("- Unknown", (width/2) + 225, posy + 17700);
  
//Pantalla-Final
  fill(negro);
  rect(500, (posy + 20000) + ascender, 1000, 1000);
  
//Actualización de datos  
  ciclo -= 0.5;
  ubicacion -= 3;
  posy -= 3;
  ascender -= 0.1;
}
