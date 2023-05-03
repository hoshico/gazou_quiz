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
  //late List<Map> quizList;
  int index = 0;
  int result = 0;
  bool isSelectNow = true;
  List imageList = [
    Image.asset("assets/anpanman02.png"),
    Image.asset("assets/anpanman03.png"),
    Image.asset("assets/anpanman04.png")
  ];

  Future<void> goTop(BuildContext context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => QuizApp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text("アンパンマンはどれかな？",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Container(
            width: 100,
            child: Image.asset("assets/images/anpanman01.png"),
          ),
          Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        final audio = AudioCache();
                        audio.play('correct.mp3');
                      },
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: Image.asset("assets/images/anpanman02.png")),
                    ),
                  ),
                  Container(
                    width: 100,
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        final audio = AudioCache();
                        audio.play('uncorrect.mp3');
                      },
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: Image.asset("assets/images/anpanman03.png")),
                    ),
                  ),
                  Container(
                    width: 100,
                    padding: EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        final audio = AudioCache();
                        audio.play('uncorrect.mp3');
                      },
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          color: Colors.teal[100],
                          child: Image.asset("assets/images/anpanman04.png")),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Expanded(
          //  child: GridView.count(
          //      primary: false,
          //      padding: const EdgeInsets.all(30),
          //      crossAxisSpacing: 10,
          //      mainAxisSpacing: 10,
          //      crossAxisCount: 3,
          //      children: <Widget>[
          //        GestureDetector(
          //          onTap: () {
          //            print("Cart Taped");
          //          },
          //          child: Container(
          //              padding: const EdgeInsets.all(8),
          //              color: Colors.teal[100],
          //              child: Image.asset("assets/anpanman02.png")),
          //        ),
          //        GestureDetector(
          //          onTap: () {
          //            print("Cart Taped");
          //          },
          //          child: Container(
          //              padding: const EdgeInsets.all(8),
          //              color: Colors.teal[100],
          //              child: Image.asset("assets/anpanman03.png")),
          //        ),
          //        GestureDetector(
          //          onTap: () {
          //            print("Cart Taped");
          //          },
          //          child: Container(
          //              padding: const EdgeInsets.all(8),
          //              color: Colors.teal[100],
          //              child: Image.asset("assets/anpanman04.png")),
          //        ),
          //      ]),
          //),
          ElevatedButton(
              onPressed: () {
                goTop(context);
              },
              child: const Text('スタートに戻る')),
        ],
      ),
    ));
  }
}
