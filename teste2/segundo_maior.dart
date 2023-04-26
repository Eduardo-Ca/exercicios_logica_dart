import 'dart:io';
//dart segundo_maior.dart

void main() {
  String? numero;
  double numeroMaior = 0;
  double segundoNumeroMaior = 0;
  List<double> numeros = [];
  int i = 1;

  calculandoMaior() {
    numeros.forEach((e) {
      if (numeroMaior < e) {
        segundoNumeroMaior = numeroMaior;
        numeroMaior = e;
      }
    });
  }

  validacao(numero) {
    try {
      numeros.add(double.parse(numero));
      calculandoMaior();
      i++;
    } catch (e) {
      print("*Digite um numero por favor!*\n");
    }
  }

  print("Escreva 4 números para ver o 1° e o 2° maior!");

  while (i < 5) {
    print("Escreva o ${i}° número:");
    numero = stdin.readLineSync();
    validacao(numero);
  }
  print("maior numero:${numeroMaior} \nSegundo maior:${segundoNumeroMaior}");
}
