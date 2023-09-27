import 'package:flutter/material.dart';
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
  int _counter = 0;

  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('SIHH'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
            child: Column(
          children: [
            new GestureDetector(
                onTap: () {
                  print("Container 1 clicked");
                },
                child: Container(
                  // height: 340,
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 8),
                  // padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                  // color: Colors.green,
                  child: Image.asset('assets/images/quiz.jpg'),
                  // child: Column(children: [
                  //   const Text("Ableitungen"),
                  // ]),
                )),
            new GestureDetector(
                onTap: () {
                  print("Container 2 clicked");
                },
                child: Container(
                  // height: 340,
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 8),
                  // padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                  // color: Colors.orange,
                  // child: Column(children: [
                  //   const Text("Ableitungen"),
                  // ]),
                  child: Image.asset('assets/images/story.png'),
                )),
            new GestureDetector(
                onTap: () {
                  print("Container 3 clicked");
                },
                child: Container(
                  height: 340,
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 8),
                  padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                  color: Colors.yellowAccent,
                  child: Column(children: [
                    const Text("Ableitungen"),
                  ]),
                )),
          ],
        )),
      ),
      //   child: const  Center(
      //     child: Text(
      //   'A drawer is an invisible side screen.',
      //   style: TextStyle(fontSize: 20.0),
      // )),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Abhishek Mishra",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("abhishekm977@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
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

