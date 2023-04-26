import 'dart:io';
//dart peixe.dart

void main(){
  double e = 0;
  double m = 0;
  print("Escreva os kilos de peixes pegos:");
  String? p = stdin.readLineSync();
  if (double.parse(p!) > 50){
    e = double.parse(p) - 50;
    m = 4 * e;
    print("Passou ${e} kilos multa de R\$${m}");
  }else{
    print("Deu tudo certo");
  }
  
}
