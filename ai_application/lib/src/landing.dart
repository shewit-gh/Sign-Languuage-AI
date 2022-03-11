// import 'dart:html';

// import 'dart:html';
// import 'dart:js';

import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  static const String routeName = "/";
  final fieldText = TextEditingController();
  void cleartext() {
    // Navigator.pushNamed(context, routeName)
    fieldText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, 
      appBar: AppBar(title: Text('Sign Language')),
      body: Center(
          child: ListView(children: [
            SizedBox(height: 80,),
            Container(
                  // width: 330,
                  height: 290,
                  child: Image.asset('assets/image/welcome.png',
                  fit: BoxFit.cover,
                  ),
                ),
          SizedBox(height:20),
        Text("WELCOME", style:TextStyle(color:Colors.lightGreen, fontSize: 35)),
        SizedBox(height:20),
        Text('Do you want to learn sign language?', style:TextStyle(color:Colors.lightGreen, fontSize: 14)),
        SizedBox(height:50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [
          // Container(
          //     width: 200,
          //     height: 60,
          //     padding: EdgeInsets.all(10),
          //     child: TextField(
          //       decoration: InputDecoration(
          //           border: OutlineInputBorder(), labelText: 'Name'),
          //       controller: fieldText,
          //     )),
            Container(
              decoration: BoxDecoration(
              boxShadow: [
                 BoxShadow(
                      color: Colors.lightGreen,
                      offset: const Offset(
                        3.0,
                        3.0,
                      ),
                      blurRadius: 7.0,
                      spreadRadius: 1.0,
                    ),
                   
              ]
            ),
              width: 100,
              height: 40,
              child: ElevatedButton(
              onPressed: () => {
                    Navigator.pushNamed(context, '/home'),
                    this.cleartext(),
                  },
              child: Text('Next')),
            ),

          
        ]),
      ])),
    );
  }
}
