//Material = android || Carpetino = iOS
import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main()=>runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  final   _perguntas = const [
      {
        'texto':'Qual a qual Mitologia pertence o deus Barão Samedi?',
        'respostas':['Voodo','Maia','Nórdica','Celta'],
      },
      { 'texto':'Qual é o deus da chuva maia?',
        'respostas':['Chaac','Ah puch','Cabrakan','Camazotz'],
      },
      { 'texto':'Qual deus nórdico teve sua mão decepada?',
        'respostas':['Tyr','Fenrir','Freya','Odin'],
      },
      { 'texto':'Qual mitologia associa os nomes dos deuses a planetas?',
        'respostas':['Voodo','Grega','Egipcia','Romana'],
        },
      { 'texto':'Na mitologia grega, qual é considerado o mensageiro dos deuses?',
        'respostas':['Zeus','Athena','Apollo','Mercúrio'],
        }
    ];

  void _responder(){
    if(temPerguntaSelecionada){
    setState((){
      _perguntaSelecionada++;
    });
    }
  }

  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme:ThemeData(
        primaryColor: Colors.purple
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz da Mitologia'),
          centerTitle: true,
        ),
        body: temPerguntaSelecionada ?
          Questionario(
          perguntas: _perguntas,
          perguntaSelecionada: _perguntaSelecionada,
          quandoResponder: _responder,
        ):Resultado()
      ),
    );
  }
}
class PerguntaApp extends StatefulWidget{
  _PerguntaAppState createState(){
  return _PerguntaAppState();
  }

}