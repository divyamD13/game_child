import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:game_child/homepage.dart';
// import 'package:game_child/quizpage.dart';

import 'loginpage1.dart';
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

       Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
       });
     }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
               height: double.infinity,
          width:double.infinity,
          color: Colors.white,
          child: Center(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child:Image.asset('assets/images/888959262fc53dc493f21c68efd46dc1.jpg')
                  ),
                  Text('\t \t  \t       Let\'s learn ! \n Safer and Better Future',style: TextStyle(

                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
            ),
          ),
        ),
    );
  }
}
