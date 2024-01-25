import 'package:flutter/material.dart';
import 'package:game_child/pages/forgotpassword.dart';
import 'package:game_child/pages/homepage.dart';
import 'package:game_child/pages/quizpage.dart';

import 'loginpage2.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(width: 20),
          Container(
            height: height,
            width: width,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  child: Image.asset('assets/images/img.png',fit: BoxFit.fill,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Login',style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                SizedBox(height: 30.0,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        child:Text('Forgot password?',
                          style: TextStyle(fontSize: 12.0,color: Colors.blue.shade900),),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPasswordPage()));
                              },
                      ),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.orange.shade300
                        ),
                        child: Text('Login',
                          style:TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));

                        },

                      )
                    ],
                  ),
                ),
                SizedBox(height:20.0),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
                  },
                  child:  Text.rich(
                    TextSpan(
                        text: 'Don\'t have an account',
                        children: [
                          TextSpan(
                            text: ' SignUp',
                            style: TextStyle(
                              color:Colors.blue.shade900,
                            ),
                          ),
                        ]
                    ),
                  ),
                ),


              ],

            ),
          ),
        ],
      ),
    );

  }
}