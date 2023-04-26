import 'dart:io';
//dart primo.dart

void main() {
  bool divisivel(numero) {
    bool valido = false;

    if (numero > 1 && numero % numero == 0) { 
      valido = true; 

      for (var i = 2; i < 10; i++) {
        if(numero % i == 0 && numero != i){
          valido = false; 
        }
      }
    }
   
    if (valido == true) {
      return true;
    } else {
      return false;
    }
  };

  print("Escreva o numero:");
  String? num = stdin.readLineSync();
  int numero = int.parse(num!);

  if (numero > 1) {
    if (divisivel(numero) == true) {
      print("É primo");
    }else{
      print("Não é primo");
    }
  }
}
