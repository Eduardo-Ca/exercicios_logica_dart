
//dart avo.dart

import 'dart:io';
import 'dart:math';

void main(){
    double resultado = 0;
   for (var i = 0; i < 8; i++) {
    print("Escreva a idade de seus  bisavós:");
    String? idade = stdin.readLineSync();

    resultado += double.parse(idade!);
    }
    
    resultado = sqrt(resultado)/2;
    print(resultado);
  }

