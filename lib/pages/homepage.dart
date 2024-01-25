import 'package:flutter/material.dart';
import 'package:game_child/pages/lesson.dart';
import 'package:game_child/pages/quizpage.dart';

import '../constants/colors.dart';
// import 'dart:async';
// import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state.
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: button,
        title:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
         const Text('GAMZY',style: TextStyle(
           fontSize: 30,
           fontWeight: FontWeight.bold,

         ),),

              Container(
                  height: 40,
                  width: 40,

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('assets/images/888959262fc53dc493f21c68efd46dc1.jpg'),
                  )
              )
        ],
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(' Hi, Abhishek',style:
              TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  print("Container 1 clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>QuizPage()));
                },
                child: Container(
                  height: 300,
                  width: 350,

                  margin: const EdgeInsets.only(bottom: 10),
                  // padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                  // color: Colors.green,
                  child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/quiz.jpg')),

                )),
            new GestureDetector(
                onTap: () {
                  print("Container 2 clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>lessontime()));
                },
                child: Container(

                  height: 300,
                  width: 500,
                  margin: const EdgeInsets.only(bottom: 8),
                  child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/lesson.jpg')),
                )),
            // new GestureDetector(
            //     onTap: () {
            //       print("Container 3 clicked");
            //     },
            //     child: Container(
            //       height: 340,
            //       width: double.infinity,
            //       margin: const EdgeInsets.only(bottom: 8),
            //       padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
            //       color: Colors.yellowAccent,
            //       child: Column(children: [
            //         const Text("Ableitungen"),
            //       ]),
            //     )),
          ],
        )),
      ),

      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color:Colors.orange),
                accountName: Text(
                  "Abhishek Mishra",
                  style: TextStyle(fontSize: 20),
                ),
                accountEmail: Text("abhishekm977@gmail.com",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal
                ),),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.brown,
                      fontWeight: FontWeight.bold
                    ),

                  ),
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' Progress Report '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Rewards '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

