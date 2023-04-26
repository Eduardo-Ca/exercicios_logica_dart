
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

