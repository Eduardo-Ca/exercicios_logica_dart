import 'dart:io';

//dart matriz.dart
void main() {
  String? numero;
  List<List<int>> listaNumeros = [[], []];

  for (var e = 0; e < 2; e++) {
    for (var i = 0; i < 4; i++) {
      print("Escreva o ${i}º  numero:");
      numero = stdin.readLineSync();
      listaNumeros[e].add(int.parse(numero!));
    }
  }

  print(listaNumeros);
}
