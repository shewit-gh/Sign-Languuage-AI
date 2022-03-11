import 'package:flutter/material.dart';
class ScorePage extends StatelessWidget {
  static const String routeName = "/score_page";
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
                color: Colors.yellow[700],
                size: 100,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 35, left: 5),
                  child: Text(
                    "Score : 0",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.lightGreen.withOpacity(0.8),
                    ),
                  )),
                  SizedBox(
                    height: 30,
                  ),
              Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.lightGreen,
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
                        {Navigator.pushNamed(context, '/home')},
                    child: Text("Home", style:TextStyle(fontSize: 20)),
                  ))
            ],
          ),
        )));
  }
}
