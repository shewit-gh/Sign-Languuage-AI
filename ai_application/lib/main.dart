import 'package:ai_application/src/home.dart';
import 'package:ai_application/src/landing.dart';
import 'package:ai_application/src/practice.dart';
import 'package:ai_application/src/quiz.dart';
import 'package:ai_application/src/quizpage.dart';
import 'package:ai_application/src/Score.dart';

import 'package:ai_application/src/practice_detail.dart';
import 'package:camera/camera.dart';

import 'package:flutter/material.dart';
List<CameraDescription> cameras = [];
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
   cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sign Language Detector',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        initialRoute: Landing.routeName,
        routes: {
          Landing.routeName: (BuildContext context) => Landing(),
          Home.routeName: (BuildContext context) =>Home(),
          Practice.routeName: (BuildContext context) =>Practice(),
          Quiz.routeName: (BuildContext context) =>Quiz(),
          PracticeDetail.routeName: (BuildContext context) =>PracticeDetail(),
          Quizpage.routeName: (BuildContext context)=>Quizpage(),
          ScorePage.routeName: (BuildContext context)=>ScorePage()

        });
  }
}
