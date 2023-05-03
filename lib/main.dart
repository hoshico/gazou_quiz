import 'package:flutter/material.dart';
import 'package:gazou_quiz/view/quiz_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // QuziAppを呼ぶ(view/quiz_app)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: QuizApp());
  }
}
