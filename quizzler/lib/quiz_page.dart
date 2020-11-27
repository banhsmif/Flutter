import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'quiz_model.dart';

QuizModel quizModel = new QuizModel();

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizModel.getQuestion(),
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w300,
                  fontSize: 22.0,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                quizModel.checkAnswer(true);
                setState(() {
                  quizModel.nextQuestion();
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                quizModel.checkAnswer(false);
                setState(() {
                  quizModel.nextQuestion();
                });
              },
            ),
          ),
        ),
        Row(
          children: quizModel.scoreList,
        ),
      ],
    );
  }
}
