function muestraRelato(texto_, tamanio, altura, pedasodenashe) {
  push();
  fill(230, 0, 0);
  textSize(tamanio);
  textLeading(30);
  textAlign(CENTER, CENTER);
  text(texto_, pedasodenashe, altura, 300, 300);
  pop();
}

function maxito(a, y, largo, ancho) {
  fill(0, 0, 0, 100);
  rect(a, y, largo, ancho);
}

function botton(ejeX, ejeY, largoX, anchoY) {
  if (mouseX > ejeX && mouseX < ejeX + largoX && mouseY > ejeY && mouseY < ejeY + anchoY) {
    return true;
  } else {
    return false;
  }
}
