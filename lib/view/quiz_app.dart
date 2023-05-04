import 'package:flutter/material.dart';
import 'package:gazou_quiz/view/quiz_page.dart';
import 'package:audioplayers/audioplayers.dart';

class QuizApp extends StatelessWidget {
  QuizApp({Key? key}) : super(key: key);
  late List<Map> quizList;

  Future<void> goToQuizApp(BuildContext context) async {
    Navigator.push(
        //context, MaterialPageRoute(builder: (context) => QuizPage(quizList)));
        context,
        MaterialPageRoute(builder: (context) => QuizPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'ホンモノわかるかな〜',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          ElevatedButton(
              onPressed: () {
                final audio = AudioCache();
                audio.play('start.mp3');
                goToQuizApp(context);
              },
              child: const Text('スタート')),
        ],
      ),
    ));
  }
}
