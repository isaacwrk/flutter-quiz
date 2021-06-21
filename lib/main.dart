//Material = android || Carpetino = iOS
import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main()=>runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;
  var _notaTotal = 0;
  final   _perguntas = const [
      {
        'texto':'Qual a qual Mitologia pertence o deus Barão Samedi?',
        'respostas':[
          {'texto':'Maia','nota':7},
          {'texto':'Nórdica','nota':2},
          {'texto':'Voodo','nota':10},
          {'texto':'Celta','nota':5}
        ],
      },
      { 'texto':'Qual é o deus da chuva maia?',
        'respostas':[
        {'texto':'Chaac','nota':10},
        {'texto':'Ah puch','nota':7},
        {'texto':'Cabrakan','nota':4},
        {'texto':'Camazotz','nota':8}
        ],
      },
      { 'texto':'Qual deus nórdico teve sua mão decepada?',
        'respostas':[
          {'texto':'Fenrir','nota':8},
          {'texto':'Tyr','nota':10},
          {'texto':'Freya','nota':4},
          {'texto':'Odin','nota':7}
          ],
      },
      { 'texto':'Qual mitologia associa os nomes dos deuses a planetas?',
        'respostas':[
          {'texto':'Voodo','nota':5},
          {'texto':'Grega','nota':7},
          {'texto':'Egipcia','nota':1},
          {'texto':'Romana','nota':10}
          ],
        },
      { 'texto':'Na mitologia grega, qual é considerado o mensageiro dos deuses?',
        'respostas':[
          {'texto':'Zeus','nota':6},
          {'texto':'Athena','nota':3},
          {'texto':'Apollo','nota':4},
          {'texto':'Mercúrio','nota':10}
          ],
        }
    ];

  void _responder(int nota){
    if(temPerguntaSelecionada){
    setState((){
      _perguntaSelecionada++;
      _notaTotal += nota;
    });
    }
  }

  void _reiniciarQuiz(){
    setState(() {
      _perguntaSelecionada =0;
      _notaTotal = 0;
    });
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
        ):Resultado(_notaTotal,_reiniciarQuiz)
      ),
    );
  }
}
class PerguntaApp extends StatefulWidget{
  _PerguntaAppState createState(){
  return _PerguntaAppState();
  }

}