import 'dart:io';
//dart cidade.dart

void main(){

  double populacaoCidade = 1000;

  print("Quantos ano quer passar?:");
  String? ano = stdin.readLineSync();

   aumentarPopulacao(){
    populacaoCidade += (populacaoCidade * 0.02) + 50;
  }

  for (var i = 0; i < int.parse(ano!); i++) {
    aumentarPopulacao();
  }

  print("se passou ${ano} anos a população foi de 1000 para ${populacaoCidade.toStringAsFixed(0)} pessoas");




 
}
