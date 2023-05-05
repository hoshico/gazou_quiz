import 'package:flutter/material.dart';
import 'dart:math' as math;
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
        backgroundColor: Colors.amber[50],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Transform.rotate(
                angle: 10 * math.pi / 180,
                child:
                    Icon(Icons.question_mark, color: Colors.pink, size: 44.0),
              ),
              const Text(
                'ホンモノどれかな〜',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                  ),
                  onPressed: () async {
                    final audio = AudioCache();
                    audio.play('start.mp3');
                    await Future.delayed(const Duration(seconds: 1));
                    goToQuizApp(context);
                  },
                  child: const Text('スタート')),
            ],
          ),
        ));
  }
}
