//dart nomes_alfabeticos.dart

import 'dart:io';

void main() {
  List<String> nomes = [];
  int i = 1;

  List<String> ordernarListaNome(List<String> lista) {
    List<String> nomeOdernado = lista.toList();
    nomeOdernado.sort((a, b) => a.compareTo(b));
    return nomeOdernado;
  }

  validacao(nome) {
    if (nome != null && nome != "") {
      nomes.add(nome);
      i++;
    } else {
      print("*Digite um nome por favor!*\n");
    }
  }

  print("Escreva 5 nomes para ser colocado em ordem alfabética !");

  while (i < 6) {
    print("\nEscreva o ${i}° nome:");
    String? nome = stdin.readLineSync();
    validacao(nome);
  }

  nomes = ordernarListaNome(nomes);
  print("\nA lista em ordem alfabética ${nomes}");
}
