//dart media.dart

import 'dart:io';

void main() {
  double media = 0;
  List<int> numeros = [];
  int i = 1;

  validacao(numero) {
    try {
      numeros.add(int.parse(numero));
      i++;
    } catch (e) {
      print("*Digite um numero por favor!*\n");
    }
  }

  tirandoMedia() {
    numeros.forEach((e) {
      media += e;
    });

    media = media / 5;
  }

  print("Escreva 5 numeros para ser tirado a média!");

  while (i < 6) {
    print("\nEscreva o ${i}° número:");
    String? numero = stdin.readLineSync();
    validacao(numero);
  }

  tirandoMedia();

  print("\nA lista de numeros: ${numeros}, média dessa lista ${media}");
}

