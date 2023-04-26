import 'dart:io';
//dart maiornumero.dart

void main(){
  double numeroMaior = 0;
  for (var i = 1; i <4; i++) {
    print("Escreva o ${i} número:");
    String? numero = stdin.readLineSync();
    if(numeroMaior < double.parse(numero!)){
      numeroMaior = double.parse(numero);
    }
  }
  print("maior numero:${numeroMaior}");
}


/**
 * é interessante aplicar validações, tipo: se é um numero, se o mesmo é nulo.
 * a interação pode ser melhorada, informando o usuário do que se trata, por exemplo.
 *
 * logica 10
 * interação 5
 * validação 0 não aplicadas 
 * 
 */
