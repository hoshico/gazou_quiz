import 'package:flutter/material.dart';
import 'package:gazou_quiz/service/suffle.dart';
import 'package:gazou_quiz/view/quiz_page.dart';
import 'package:audioplayers/audioplayers.dart';

class QuizApp extends StatelessWidget {
  QuizApp({Key? key}) : super(key: key);
  late List<Map> quizList;

  Future<void> goToQuizApp(BuildContext context) async {
    // csvの問題をquizListに格納
    //quizList = shuffle(await getCsvDate('assets/quiz1.csv'));
    //for (Map row in quizList) {
    //  debugPrint(row["question"]);
    //}

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
            'クイズ',
          ),
          ElevatedButton(
              onPressed: () {
                goToQuizApp(context);
              },
              child: const Text('スタート')),
          ElevatedButton(
              onPressed: () {
                final audio = AudioCache();
                audio.play('uncorrect.mp3');
              },
              child: const Text('不正解')),
          ElevatedButton(
              onPressed: () {
                final audio = AudioCache();
                audio.play('correct.mp3');
              },
              child: const Text('正解音'))
        ],
      ),
    ));
  }
}
