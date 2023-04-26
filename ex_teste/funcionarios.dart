import 'dart:io';
//dart funcionarios.dart
class Funcionario {
  double tempoDeCasa;
  String sexo;
  double salario;
  Funcionario({
    required this.tempoDeCasa,
    required this.sexo,
    required this.salario,
  });

  double ajusteSalarial(double salario,String sexo,double tempoDeCasa){
    
    if(sexo == "M"){
      if(tempoDeCasa >= 10){
        salario += (5/100 * salario);
      }else if(tempoDeCasa <= 10){
        salario += (3/100 * salario);
      }
    }else if(sexo == "F"){
      if(tempoDeCasa >= 8){
        salario += (5/100 * salario);
      }else if(tempoDeCasa <= 8){
        salario += (3/100 * salario);
      }
    }
    return salario;
  }
}

dynamic main(){

  print("Escreva M para homem F para mulher:");
  String? sexo = stdin.readLineSync()!.toUpperCase();
  print("Escreva seu salario:");
  String? salario = stdin.readLineSync();
  print("Escreva seu tempo de casa:");
  String? tempoDeCasa = stdin.readLineSync();

  Funcionario funcionario = Funcionario(salario: double.parse(salario!),tempoDeCasa: double.parse(tempoDeCasa!),sexo: sexo);
  funcionario.salario = funcionario.ajusteSalarial(funcionario.salario, funcionario.sexo, funcionario.tempoDeCasa);
  print("seu novo salario:${funcionario.salario}");
}
