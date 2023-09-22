import 'dart:async';

import 'package:flutter/material.dart';
import 'package:game_child/homepage.dart';
import 'package:game_child/quizpage.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

     Timer(Duration(seconds: 5), () {

       Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>QuizPage()
       ));
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(

          color: Colors.cyan,
          child: Center(
            child: const Text('GAMZY',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
          ),
        ),
    );
  }
}
