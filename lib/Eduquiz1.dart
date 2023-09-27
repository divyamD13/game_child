import 'package:flutter/material.dart';
import 'package:game_child/colors.dart';
import 'package:game_child/quizpage.dart';

class EducationQuiz1 extends StatefulWidget {
  const EducationQuiz1({super.key});

  @override
  State<EducationQuiz1> createState() => _EducationQuiz1State();
}

class _EducationQuiz1State extends State<EducationQuiz1> {
  @override
  Widget build(BuildContext context) {
    resizeToAvoidBottomInset: false;
    return Scaffold(
       appBar: AppBar(
        backgroundColor: button,
        title: const Text('Right to Education',
        style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
    ),
    ),
    ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30,),
                Text('What to choose ?',style: TextStyle(fontSize:40,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Container(
            width: 300,
            height: 300,
            child: Image.asset('assets/images/7391d4d6da02fa217de50165e91660cf.jpg',fit: BoxFit.fill,),
          ),
          SizedBox(height: 50,),
        const Row(
          children: [

            SizedBox(
              width: 30,
            ),
            Text('Option 1',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
            SizedBox(
              width: 70,
            ),
            Text('Option 2',style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
          ],
        ),
          Row(
            children: [

              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  print("Option 1 selected");
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("CORRECT ANSWER",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),),

                      content: Text("Each and Every child has Right to Education  \n Learn more",
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                    );
                  });
                },
                child: Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/images/EDUCATION.jpg',fit: BoxFit.fill,),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              GestureDetector(
                onTap: () {
                  print("OPtion 2 selecteD");
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(

                      title: Text("WRONG ANSWER",style: TextStyle(
                         color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),),
                      content: Text("Child Labour is a crime",
                      style: TextStyle(
                        fontSize: 25,
                      ),),
                    );
                  });
                },
                child: Container(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/images/edu1.jpg',fit: BoxFit.fill,),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //         foregroundColor: Colors.black,
          //         backgroundColor: Colors.orange.shade300,
          //      ),
          //     onPressed: (){
          //
          //     },
          //     child: Text('SUBMIT',style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       fontSize: 20,
          //     ),)
          // ),
        ],
      ),
    );
  }
}
