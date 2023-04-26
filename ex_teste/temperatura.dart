import 'dart:io';
//dart temperatura.dart

void main(){

  print("Escreva a temperatura em Celsius:");
  String? temperatura = stdin.readLineSync();

  double temperaturaConvertida = (double.parse(temperatura!) * 9/5) + 32;

  print("A temperatura convertida é: ${temperaturaConvertida}");
 
}

