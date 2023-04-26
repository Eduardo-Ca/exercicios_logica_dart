//dart impares.dart
import 'dart:io';

void main(){

    print("Escreva o numero:");
    String? numero = stdin.readLineSync();     
    numero = (int.parse(numero!)%2).toString();
  
    if(int.parse(numero) == 0){
      print("par");
    }else{
       print("impar");
    }

  }


/**
 * é interessante aplicar validações, tipo: se é um numero, se o mesmo é nulo.
 *
 * logica 10
 * interação 5
 * validação 0 não aplicadas 
 * 
 */
