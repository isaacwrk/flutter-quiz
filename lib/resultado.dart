import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

   final int nota;
   Resultado(this.nota);

  String get fraseResultado{
      if(nota < 8){
        return 'Parabéns mas não é o suficiente!';
      }else if(nota < 12){
        return 'aprendiz dos deuses! você é bom!';
      }else if(nota < 16){
        return 'Semi-deus! impressionante!';
      }else{
        return 'Acólito dos deuses!\n Você acertou todas!';
      }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Text(fraseResultado,
          style: TextStyle(fontSize: 18),),
    );
  }
}