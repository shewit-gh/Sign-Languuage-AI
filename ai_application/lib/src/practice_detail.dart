import 'package:flutter/material.dart';
import 'package:ai_application/src/data/data.dart';

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
                ))
          ],
        ),
      ),
    );
  }
}
