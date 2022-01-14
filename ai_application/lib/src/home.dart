import 'package:flutter/material.dart';
import 'package:ai_application/src/navbottom.dart';
class Home extends StatelessWidget {
  static const String routeName = "/home";
  @override
  Widget build(BuildContext context) {
  // const score = 5;
    return Scaffold(
      appBar: AppBar(title: Text('Sign Language')),
      body:Container (
          // padding: EdgeInsets.only(top:50),
          child: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
        children: [
          // Container(
          //   child: Row(
          //     children: [
          //       Text('HIGH SCORE:'),
          //       Text(score.toString())
          //     ],
          //   ),
          // ),
          Container(
             decoration: BoxDecoration(
              boxShadow: [
                 BoxShadow(
                      color: Colors.teal,
                      offset: const Offset(
                        3.0,
                        3.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                   
              ]
            ),
            height: 70,
            width:250,
            child: ElevatedButton(
              onPressed: () => {Navigator.pushNamed(context, '/practice')},
              child: Text('PRACTICE', style:TextStyle(fontSize: 20))),),
              SizedBox(
                height: 40,
              ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                 BoxShadow(
                      color: Colors.teal,
                      offset: const Offset(
                        3.0,
                        3.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                   
              ]
            ),
            height: 70,
            width:250,
            child: ElevatedButton(
              onPressed: () => {Navigator.pushNamed(context, '/quizstarter')}, child: Text('QUIZ',style:TextStyle(fontSize: 20))) ,
          )
         ,
        ],
      ))),
      bottomNavigationBar: bottomnav(),
    );
  }
}
