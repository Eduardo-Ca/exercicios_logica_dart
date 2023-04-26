import 'dart:io';
//dart somacinco.dart

void main(){
  double soma = 0;
  for (var i = 1; i < 6; i++) {
    print("Escreva o ${i} número:");
    String? numero = stdin.readLineSync();
    soma += double.parse(numero!);
  }
  print("soma:${soma}");
}
