import 'dart:io';
//dart tabuada.dart

void main(){

  print("Escreva o número:");
  String? numero = stdin.readLineSync();
  for (var i = 1; i <11; i++) {
    int resultado = int.parse(numero!) * i;
    print("${numero} X ${i} = ${resultado}");
    print("=*=*=*=*=*=*=*=");

  }
}

/**
 * é interessante aplicar validações, tipo: se é um numero, se o mesmo é nulo.
 *
 * logica 10
 * interação 10
 * validação 0 não aplicadas 
 * 
 */
