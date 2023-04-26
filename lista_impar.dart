import 'dart:io';
//dart lista_impar.dart

void main() {
  List<double> numeros = [];
  int i = 1;

  validacao(numero) {
    try {
      if (double.parse(numero!) % 2 != 0) {
        numeros.add(double.parse(numero!));
      }
      i++;
    } catch (e) {
      print("*Digite um numero por favor!*\n");
    }
  }

  print("Escreva 4 números e eu irei ver quais são ímpares!");

  while (i < 5) {
    print("Escreva o ${i}° número:");
    String? numero = stdin.readLineSync();
    validacao(numero);
  }
  print("\nos números ímpares são ${numeros}");
}
