import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });

  }


  @override
  Widget build(context) {

    final currentQuestion = questions[currentQuestionIndex];

    return Container(
      margin: EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity, //use as much as u can
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text, style:const  TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,),
            const SizedBox(height: 30,),
            ...currentQuestion.answers.map((answer) { //dinamcki da sa vnese lista vo element sho prifakje list<widget>
              return AnswerButton(answerText: answer, onTap: answerQuestion,);
            })
          ],
        ),
      ),
    );

  }
}
