import 'dart:io';
//dart maiornumero.dart

void main(){
  double numeroMaior = 0;
  for (var i = 1; i <4; i++) {
    print("Escreva o ${i} número:");
    String? numero = stdin.readLineSync();
    if(numeroMaior <  double.parse(numero!)){
      numeroMaior = double.parse(numero);
    }
  }
  print("maior numero:${numeroMaior}");
}
