import 'package:flutter/material.dart';
import 'package:game_child/pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Child',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black ),
        useMaterial3: true,
      ),
      home:SplashScreen() ,
    );
  }
}

