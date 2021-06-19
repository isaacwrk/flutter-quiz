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
    final  List<Map> perguntas = [
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

    List<String> respostas = perguntas[_perguntaSelecionada].cast()['respostas'];
    
    //for (String textoResp in respostas) {
      //widgets.add(Resposta(textoResp, _responder));
    //}
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
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ... respostas.map((t) =>Resposta(t,_responder)).toList(),
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