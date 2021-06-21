import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
   final void Function() quandoReiniciarQuiz;
   final int nota;
   Resultado(this.nota, this.quandoReiniciarQuiz);

  String get fraseResultado{
      if(nota < 20){
        return 'Parabéns mas não é o suficiente!';
      }else if(nota < 35){
        return 'aprendiz dos deuses!\n      você é bom!';
      }else if(nota < 40){
        return 'Semi-deus!\nimpressionante!';
      }else{
        return 'Acólito dos deuses!\nVocê acertou todas!';
      }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      //alinhando o widget center
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
              child: Text(fraseResultado,
              style: TextStyle(fontSize: 18),),
        ),
        FlatButton(
          child: Text('Reiniciar'),
          textColor: Colors.red,
          onPressed: quandoReiniciarQuiz,
        )
      ],
    );
  }
}