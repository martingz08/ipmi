// cambio pantallas
int pantalla = 0;
int tiempoCambioPantalla = 5000;
int tiempoAnterior = 0;

// variables animación
float textAlpha = 0;
float fadeSpeed = 3.0;

// imágenes
PImage img1, img2, img3, img4, img5;

// fuente
PFont fuente;

// botón reinicio (última pantalla)
int buttonX, buttonY, buttonW = 150, buttonH = 50;

void setup() {
  size(640, 480);
  
  // cargar imágenes
  img1 = loadImage("img1.jpg");
  img2 = loadImage("img2.jpg");
  img3 = loadImage("img3.jpg");
  img4 = loadImage("img4.jpg");
  img5 = loadImage("img5.jpg");
  
  // cargar fuente
  fuente = createFont("SegoePrint-48", 32);
  
  // posición del botón
  buttonX = width - buttonW - 20;
  buttonY = height - buttonH - 20;
}

void draw() {
  if (millis() - tiempoAnterior >= tiempoCambioPantalla && pantalla < 6) {
    pantalla++;
    tiempoAnterior = millis();
    textAlpha = 0;
  }

  if (pantalla == 0) pantalla1();
  else if (pantalla == 1) pantalla2();
  else if (pantalla == 2) pantalla3();
  else if (pantalla == 3) pantalla4();
  else if (pantalla == 4) pantalla5();
}

void pantalla1() {
  background(255);
  image(img1, 0, 0, width, height);
  textFont(fuente);
  fill(0, textAlpha);
  textSize(32);
  textAlign(CENTER, CENTER);

  text(" ponyo, pelicula anime de aventura y fantasia" ,313, 30);
  text("hecha por el estudio ghibli", 313, 67);
  text("2008", 333, 443);
  text("Hayao Miyazaki", 333, 398);

  textAlpha += fadeSpeed;
  if (textAlpha > 255) textAlpha = 255;
}

void pantalla2() {
  background(255);
  image(img2, 0, 0, width, height);
  textFont(fuente);
  fill(0, textAlpha);
  textSize(32);
  textAlign(CENTER, CENTER);

  text("Un cuento mágico sobre la amistad ", 316, 30);
  text("entre un niño y una criatura marina", 316, 60);
  text("con el amor infantil más puro y limpio", 333, 443);
  text("Ponyo mezcla la fantasía del océano", 333, 398);

  textAlpha += fadeSpeed;
  if (textAlpha > 255) textAlpha = 255;
}

void pantalla3() {
  background(255);
  image(img3, 0, 0, width, height);
  textFont(fuente);
  fill(255, textAlpha);
  textSize(32);
  textAlign(CENTER, CENTER);

  text(" Fascinada por el mundo humano", 316, 30);
  text("Ponyo usa magia para transformarse en niña", 316, 56);
  text("pero esto altera el equilibrio natural..", 316, 81);
  text("El amor y la valentía de ambos ,", 333, 368);
  text("restauran el orden, y Ponyo", 333, 393);
  text("elige vivir como humana junto a Sosuke.", 333, 420 );

  textAlpha += fadeSpeed;
  if (textAlpha > 255) textAlpha = 255;
}

void pantalla4() {
  background(255);
  image(img4, 0, 0, width, height);
  textFont(fuente);
  fill(0, textAlpha);
  textSize(32);
  textAlign(CENTER, CENTER);

  text("Fujimoto, el padre de Ponyo", 316, 30);
  text("teme el mundo humano y busca detenerla", 316, 60);
  text("solo quiere proteger el equilibrio del océano.", 333, 370);
  text("incomprensión entre lo humano y marino", 333, 395);
  text("es el conflicto, Solo el amor puede unirlos", 333, 420);

  textAlpha += fadeSpeed;
  if (textAlpha > 255) textAlpha = 255;
}

void pantalla5() {
  background(255);
  image(img5, 0, 0, width, height);
  textFont(fuente);
  fill(1, textAlpha);
  textSize(32);
  textAlign(CENTER, CENTER);

  text("Ponyo elige quedarse en tierra por amor a el", 316, 30);
  text("Al aceptarla tal como es, nace un equilibrio", 316, 65);
  text("y el mar se calma...", 333, 393);

  textAlpha += fadeSpeed;
  if (textAlpha > 255) textAlpha = 255;

  // botón de reinicio
  if (mouseX > buttonX && mouseX < buttonX + buttonW &&
      mouseY > buttonY && mouseY < buttonY + buttonH) {
    fill(150, 220, 255);
  } else {
    fill(100, 200, 250);
  }
  rect(buttonX, buttonY, buttonW, buttonH, 10);

  fill(0);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Reiniciar", buttonX + buttonW / 2, buttonY + buttonH / 2);
}

void mousePressed() {
  if (pantalla == 5 &&
      mouseX > buttonX && mouseX < buttonX + buttonW &&
      mouseY > buttonY && mouseY < buttonY + buttonH) {
    pantalla = 0;
    tiempoAnterior = millis();
    textAlpha = 0;
  }
}
