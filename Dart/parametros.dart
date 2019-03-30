void main() {
  printarFrase("Olá Mundo", caracterFinal: "!");
  printarFrase("Olá Mundo");
}

//{String caracterFinal} => {} faz o parâmetro ser opcional;
//Também faz com que o parâmetro possa ser "nomeado" caracterFinal: ...
void printarFrase(String texto, {String caracterFinal}) {
  caracterFinal != null ? print("${texto}${caracterFinal}") : print(texto);
}
