import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  static const String routeName = "/quizstarter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign Language'),
        ),
        body: Center(
            child: Container(
          height: 500,
          width: 400,
          // decoration: BoxDecoration(border: Border.all(width: 0)),
          child: Column(
            children: [
              Icon(
                Icons.lightbulb,
                color: Colors.yellow,
                size: 100,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 35, left: 5),
                  child: Text(
                    '''When the time starts you will be given
a word to display using a sign language.
click the start button when you are ready.''',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.teal.withOpacity(0.8),
                    ),
                  )),
                  SizedBox(
                    height: 30,
                  ),
              Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.teal,
                      offset: const Offset(
                        3.0,
                        3.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ),
                  ]),
                  width: 150,
                  height: 50,
                  // padding: EdgeInsets.only(left: 20, top: 30),
                  child: ElevatedButton(
                    onPressed: () =>
                        {Navigator.pushNamed(context, '/quizpage')},
                    child: Text("START", style:TextStyle(fontSize: 20)),
                  ))
            ],
          ),
        )));
  }
}
