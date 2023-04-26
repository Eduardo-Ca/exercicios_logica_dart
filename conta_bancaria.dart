//dart conta_bancaria.dart
import 'dart:io';

class ContaBancaria {
  String titular;
  double limite;
  double saldo;
  ContaBancaria({
    required this.titular,
    required this.limite,
    required this.saldo,
  });

  depositar(double valor) {
    saldo += valor;
    print("\nSaldo atualizado:R\$${this.saldo}");
    print("================");
  }

  sacar(double valor) {
    if (this.saldo >= valor && this.limite >= valor) {
      saldo -= valor;
      print("\nSaldo atualizado:R\$${this.saldo}");
      print("================");
    } else {
      print(
          "Saldo menor do que o valor que deseja sacar ou limite disponível atingido!");
      print("\nSALDO:R\$${this.saldo} LIMITE:R\$${this.limite}");
    }
  }

  verificarSaldo() {
    print("\nSALDO:R\$${this.saldo} LIMITE:R\$${this.limite}");
    print("================");
  }
}

dynamic main() {
  bool sair = false;
  String? valor;
  ContaBancaria contaMaria =
      ContaBancaria(titular: "Maria", limite: 500, saldo: 1000);

  print("Bem vinda ${contaMaria.titular} oque deseja fazer?");

  while (sair == false) {
    print(
        "\nDigite: \n1 para SACAR \n2 para DEPOSITAR \n3 para VERIFICAR SALDO \n4 para SAIR");
    String? numero = stdin.readLineSync();

    switch (numero) {
      case "1":
        try {
          print("Digite o valor que deseja sacar por favor!");
          valor = stdin.readLineSync();
          contaMaria.sacar(double.parse(valor!));
        } catch (e) {
          print("*Digite um numero por favor!*\n");
        }

        break;
      case "2":
        try {
          print("Digite o valor que deseja depositar por favor!");
          valor = stdin.readLineSync();
          contaMaria.depositar(double.parse(valor!));
        } catch (e) {
          print("*Digite um numero por favor!*\n");
        }

        break;
      case "3":
        contaMaria.verificarSaldo();
        break;
      case "4":
        sair = true;
        break;
      default:
        print("DIGITE 1,2,3 OU 4");
    }
  }
}
