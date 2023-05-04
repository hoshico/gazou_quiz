import 'package:flutter/material.dart';
import 'package:gazou_quiz/view/result_page.dart';
import 'package:gazou_quiz/view/quiz_app.dart';
import 'package:audioplayers/audioplayers.dart';

class QuizPage extends StatefulWidget {
  //QuizPage(this.quizList, {Key? key}) : super(key: key);
  QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => quizPageState();
}

class quizPageState extends State<QuizPage> {
  int index = 0;
  int result = 0;
  bool isSelectNow = true;
  bool isCorrect = false;
  List imageList = [
    Image.asset("assets/anpanman02.png"),
    Image.asset("assets/anpanman03.png"),
    Image.asset("assets/anpanman04.png")
  ];

  List quizList = [
    {
      "question": "アンパンマンはどれかな？",
      "questionImage": "assets/images/anpanman01.png",
      "answer": [
        {"answerImage": "assets/images/anpanman02.png", "isCorrect": true},
        {"answerImage": "assets/images/anpanman03.png", "isCorrect": false},
        {"answerImage": "assets/images/anpanman04.png", "isCorrect": false},
      ]
    },
    {
      "question": "みももはどれかな？",
      "questionImage": "assets/images/mimomo01.jpg",
      "answer": [
        {"answerImage": "assets/images/mimomo02.jpg", "isCorrect": false},
        {"answerImage": "assets/images/mimomo03.png", "isCorrect": true},
        {"answerImage": "assets/images/mimomo04.jpg", "isCorrect": false},
      ]
    },
    {
      "question": "パパはどれかな？",
      "questionImage": "assets/images/papa01.jpg",
      "answer": [
        {"answerImage": "assets/images/papa02.jpg", "isCorrect": false},
        {"answerImage": "assets/images/papa03.jpg", "isCorrect": false},
        {"answerImage": "assets/images/papa04.png", "isCorrect": true},
      ]
    },
    {
      "question": "ママはどれかな？",
      "questionImage": "assets/images/mama01.jpg",
      "answer": [
        {"answerImage": "assets/images/mama02.jpg", "isCorrect": false},
        {"answerImage": "assets/images/mama03.jpg", "isCorrect": true},
        {"answerImage": "assets/images/mama04.jpg", "isCorrect": false},
      ]
    },
    {
      "question": "さらはどれかな？",
      "questionImage": "assets/images/sara01.jpg",
      "answer": [
        {"answerImage": "assets/images/sara02.jpg", "isCorrect": true},
        {"answerImage": "assets/images/sara03.jpg", "isCorrect": false},
        {"answerImage": "assets/images/sara04.jpg", "isCorrect": false},
      ]
    },
  ];

  Future<void> goTop(BuildContext context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => QuizApp()));
  }

  // TODO: 関数にする
  Future<void> updataQuiz(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(quizList[index]["question"],
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 100,
            child: Image.asset(quizList[index]["questionImage"]),
          ),
          Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 120,
                    height: 120,
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () async {
                        final audio = AudioCache();
                        if (quizList[index]["answer"][0]["isCorrect"] == true) {
                          if (index == 4) {
                            audio.play('sara.mp3');
                            await Future.delayed(const Duration(seconds: 1));
                            goTop(context);
                          } else {
                            audio.play('correct.mp3');
                            await Future.delayed(const Duration(seconds: 1));
                            setState(() {
                              index++;
                            });
                          }
                        } else {
                          audio.play('uncorrect.mp3');
                        }
                      },
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: Image.asset(
                              quizList[index]["answer"][0]["answerImage"])),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () async {
                        final audio = AudioCache();
                        if (quizList[index]["answer"][1]["isCorrect"] == true) {
                          if (index == 4) {
                            audio.play('sara.mp3');
                            await Future.delayed(const Duration(seconds: 1));
                            goTop(context);
                          } else {
                            audio.play('correct.mp3');
                            await Future.delayed(const Duration(seconds: 1));
                            setState(() {
                              index++;
                            });
                          }
                        } else {
                          audio.play('uncorrect.mp3');
                        }
                      },
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: Image.asset(
                              quizList[index]["answer"][1]["answerImage"])),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () async {
                        final audio = AudioCache();
                        if (quizList[index]["answer"][2]["isCorrect"] == true) {
                          if (index == 4) {
                            audio.play('sara.mp3');
                            await Future.delayed(const Duration(seconds: 1));
                            goTop(context);
                          } else {
                            audio.play('correct.mp3');
                            await Future.delayed(const Duration(seconds: 1));
                            setState(() {
                              index++;
                            });
                          }
                        } else {
                          audio.play('uncorrect.mp3');
                        }
                      },
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: Image.asset(
                              quizList[index]["answer"][2]["answerImage"])),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
