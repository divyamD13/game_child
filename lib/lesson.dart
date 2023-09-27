import 'package:flutter/material.dart';
class lessontime extends StatefulWidget {
  const lessontime({super.key});

  @override
  State<lessontime> createState() => _lessontimeState();
}

class _lessontimeState extends State<lessontime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('LEGAL STORIES'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
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
                      margin: const EdgeInsets.only(bottom: 15),
                      // padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                      // color: Colors.green,

                      child: Image.asset('assets/images/vdo1.jpg'),

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
                      margin: const EdgeInsets.only(bottom: 15),
                      // padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                      // color: Colors.orange,
                      // child: Column(children: [
                      //   const Text("Ableitungen"),
                      // ]),
                      child: Image.asset('assets/images/health.jpg'),
                    )),
                new GestureDetector(
                    onTap: () {
                      print("Container 3 clicked");
                    },
                    child: Container(
                      // height: 340,
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 15),
                      // padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                      // color: Colors.orange,
                      // child: Column(children: [
                      //   const Text("Ableitungen"),
                      // ]),
                      child: Image.asset('assets/images/edu.jpg'),
                    )),
              ],
            )),
      ),
      //   child: const  Center(
      //     child: Text(
      //   'A drawer is an invisible side screen.',
      //   style: TextStyle(fontSize: 20.0),
      // )),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
