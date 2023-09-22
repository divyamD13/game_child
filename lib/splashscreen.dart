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

     Timer(Duration(seconds: 3), () {

       Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>QuizPage()
       ));
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
               
          color: Colors.white,
          child: Center(
            child: Container(
              width: 200,
              height: 200,
              child:Image.asset('assets/images/888959262fc53dc493f21c68efd46dc1.jpg')
            ),
          ),
        ),
    );
  }
}
