//Material = android || Carpetino = iOS
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main()=>runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  void _responder(){
    setState((){
      _perguntaSelecionada++;
    });
  }
  @override
  Widget build(BuildContext context){
    final  perguntas = [
      'Qual deus Nórdico é conhecido como pai de todos?',
      'Qual deus grego é o mensageiro dos deuses ?',
      'Qual religião pertence o deus Barão Samedi?',
      'de qual mitologia pertence o deus Amon?',
      'qual mitologia associou deuses gregos a nome de planetas?',
      'Sleipnir, o cavalo de Odin, tem como mãe:'
    ];
    return MaterialApp(
      theme:ThemeData(
        primaryColor: Colors.purple
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz da Mitologia'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 1',_responder),
            Resposta('Resposta 2',_responder),
            Resposta('Resposta 3',_responder),
          ],
        ),
      ),
    );
  }
}
class PerguntaApp extends StatefulWidget{
  _PerguntaAppState createState(){
  return _PerguntaAppState();
  }

}