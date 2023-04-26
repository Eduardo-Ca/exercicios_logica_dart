import 'dart:io';
//dart media.dart

void main(){
  double numeroMaior = 0;
  double numeroMenor = 0;
  double media = 0;
  for (var i = 1; i <11; i++) {

    print("Escreva o ${i} número:");
    String? numero = stdin.readLineSync();
    if(numeroMaior <  double.parse(numero!)){
      numeroMaior = double.parse(numero);
    }
    if(numeroMenor >  double.parse(numero)){
      numeroMenor = double.parse(numero);
    }else if(numeroMenor == 0){
      numeroMenor = double.parse(numero);
    }
    media +=  double.parse(numero);
    
  }
  media = media/2;
  print("maior numero:${numeroMaior} menor numero:${numeroMenor} media:${media}");
}
