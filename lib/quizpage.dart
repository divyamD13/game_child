import 'package:flutter/material.dart';
class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.cyan ,
        title: const Text('Quiz Visualiser',
          style:TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ) ,
        ),


      ),


    );
  }
}
