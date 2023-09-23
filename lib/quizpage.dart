import 'package:flutter/material.dart';
class QuizPage extends StatefulWidget {
  const QuizPage({super.key});






  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    var arrQuiz=['Right to Education -1','Right to Education -2','Right to Education -3','Right to Health -1','Right to Health -2','Right to Equality',' Right to be protected from all sorts of violence',' Right to minimum standards of food, shelter and clothing','Right to be born',' Right to live with dignity'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.orange.shade300,
        title: const Text('Quiz Visualiser',
          style:TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ) ,
        ),


      ),
       body: Scrollbar(
         child: ListView.separated(itemBuilder: (context,index){
               return  ListTile(
                 leading: CircleAvatar(

                   child: Image.asset('assets/images/png-transparent-universal-declaration-of-human-rights-right-to-education-childrens-rights-law-discovery-cartoon-s-child-cartoon-fictional-character-thumbnail.png')
                 ),
                 title: Text(arrQuiz[index],style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w500,
                 ),),

                 trailing: Container(
                   decoration: BoxDecoration(
                     color: Colors.orange.shade300,
                     borderRadius: BorderRadius.circular(5),
                   ),
                   width:50,
                   height:50,

                   child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_forward_ios_sharp),
                   color: Colors.white,),
                 ),
               );
             },
                 itemCount: arrQuiz.length,
           separatorBuilder: ( context, index){
             return
                 const Divider(
                   height: 50,
                   thickness:0,
                 );
               },
             ),
       ),

    );
  }
}
