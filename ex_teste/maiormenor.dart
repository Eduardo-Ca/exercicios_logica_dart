import 'dart:io';
//dart maiormenor.dart
void main(){

  print("Escreva o primeiro número:");
  String? numero1 = stdin.readLineSync();
  print("Escreva o segundo número:");
  String? numero2 = stdin.readLineSync();

  if (numero1 != null && numero2 != null ){
  
    if(int.parse(numero1) >  int.parse(numero2)){
      print("${numero1} é maior que ${numero2}");
    }else if(numero1 == numero2){
      print("${numero1} é igual ${numero2}");
    }else{
      print("${numero2} é maior que ${numero1}");
    }
  }
  
}
