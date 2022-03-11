import 'package:flutter/material.dart';
import 'package:ai_application/src/data/data.dart';
/*
class PracticeDetail extends StatelessWidget {
  static const String routeName = "/practicedetail";
  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)?.settings.arguments as int;
    final photo = data[index].photoname;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Language'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              // width: 330,
              height: 300,
              child: Image.asset(
                'assets/image/$photo',
                fit: BoxFit.cover,
              ),
            ),
           
            Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  data[index].name,
                  style: TextStyle(fontSize: 20),
                )),
                
                Expanded(
                      // A flexible child that will grow to fit the viewport but
                      // still be at least as big as necessary to fit its contents.
                      child: Text(
                  data[index].description,
                  style: TextStyle(fontSize: 20),
                ),
                    ),
                
          ],
        ),
      ),
    );
  }
}
*/
class PracticeDetail extends StatelessWidget {
  static const String routeName = "/practicedetail";
  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)?.settings.arguments as int;
    final photo = data[index].photoname;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Language'),
      ),
      body: Center(
        child: ListView(
  padding: const EdgeInsets.all(10),
  children: <Widget>[
    SizedBox(
              height: 20,
            ),
    Container(
              // width: 330,
              height: 300,
              child: Image.asset(
                'assets/image/$photo',
                //fit: BoxFit.cover,
              ),
            ),
            Column(children: [
              
            ],),
            
    Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                color: Colors.lightGreen[200],
                child: Text(
                  data[index].name,
                  style: TextStyle(fontSize: 30),
                )),
    Container(
      color: Colors.lightGreen[50],
                      // A flexible child that will grow to fit the viewport but
                      // still be at least as big as necessary to fit its contents.
                      child: Text(
                  data[index].description,
                  style: TextStyle(fontSize: 18),
                ),
                    ),
  ],
)
      ),
    );
  }
}
