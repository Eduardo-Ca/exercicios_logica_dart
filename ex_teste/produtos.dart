// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';
//dart produtos.dart
class Produto {
  int codigo;
  int quantidadeMin;
  int quantidadeMax;
  int quantidadeEstoq;
  Produto({
    required this.codigo,
    required this.quantidadeMin,
    required this.quantidadeMax,
    required this.quantidadeEstoq,
  });
}

void main(){
    Produto produto1 = Produto(codigo: 2, quantidadeMin: 0, quantidadeMax: 5, quantidadeEstoq: 4);
  while ( 0 < produto1.quantidadeEstoq) {
    
    print("Quer comprar o produto de cod:${produto1.codigo} existe apenas ${produto1.quantidadeEstoq} no estoque");
    print("escreva sim ou não");
    String? resposta = stdin.readLineSync()!.toUpperCase();

    if (resposta == "SIM"){
      produto1.quantidadeEstoq -= 1;
    }else if (resposta == "NAO" ){
      print("OK");
    }else{
      print("eita");
    }

  }

}
