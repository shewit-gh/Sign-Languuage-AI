import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';
import 'package:ai_application/src/Score.dart';
import '../main.dart';



String result = "";
int score = 0;
int question_no = 0;
int _counter = 10;
List<String> questions = ["First Question : ", "Second Question : ", "Third Question : ", "Fourth Question : ","Fifth Question : ","Six Question : ", "You are done"];
List<String> Signs = ["Hello","Thank You","No","Yes","City","Sad",""];
class Quizpage extends StatelessWidget {
  static const String routeName = "/quizpage";
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Sign Language'),
    ),
    body: CameraApp(),
    );
  }
}

class MyQuizPage extends StatefulWidget {
  MyQuizPage({Key? key}) : super(key: key);

  @override
  _MyQuizPageState createState() => _MyQuizPageState();
}

class _MyQuizPageState extends State<MyQuizPage> {
  
  
  
   late Timer _timer;

  void _startTimer() {
    _counter = 10;
    //if (_timer != null) {
    //  _timer.cancel();
    //}
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          question_no ++;
          if (question_no < 6){ 
              _counter = 10;
          }
          else{
          _timer.cancel();
          }
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _startTimer();
    
    }

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (question_no < 6)
                ? Text("")
                : Text(
                    "DONE!",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
                  Text(
              questions[question_no] + Signs[question_no],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            (question_no < 6)
            ? Text(
              'Timer : $_counter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ):Text(""),
            Text("Score: $score"),
          ],
        ),
      );
  }
}

class CameraApp extends StatefulWidget {
 const CameraApp({Key? key}) : super(key: key);

  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
 
  CameraController? controller;
  CameraImage? imgcamera;
  bool isWorking = false;
  

  loadModel() async{
    await Tflite.loadModel(
      model : "model.tflite",
      labels : "tflite_label_map.txt",

    );
  }


  initCamera() async{
    //super.initState();
   print("here1");
    controller = CameraController(cameras[1], ResolutionPreset.medium);
    
    controller!.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {
        controller!.startImageStream((imageFromStream) => {
              if (!isWorking)
                {
                  isWorking = true,
                  imgcamera = imageFromStream,
                  print(imgcamera),
                  runModelOnStreamFrame(imgcamera),
                }
            });
      });
    });
  }

runModelOnStreamFrame(imgcamera) async{
  
if (imgcamera != null){
  var recognitions = await Tflite.detectObjectOnFrame(
    bytesList: imgcamera!.planes.map((plane){
      return plane.bytes;
    }).toList(),
    model:"SSDMobileNet",
    imageHeight: imgcamera!.height,
    imageWidth: imgcamera!.width,
    imageMean: 127.5,
    imageStd: 127.5,
    rotation: 90,
    numResultsPerClass: 2,
    threshold: 0.4,
    asynch: true,
  );
  
    
    recognitions!.forEach((response) {
      print(response["detection_classes"]);
      if (response["detection_classes"] == Signs[question_no]){
        score += 1;
        _counter = 0;
      }
      result = response["label"] + "  " + (response["confidence"] as double).toStringAsFixed(2) + "/n";
    
    });
    setState(() {
      result = result;    });
    isWorking = false;
  }
}

@override
  void initState() {
    super.initState();
    initCamera();
    loadModel();
    
    }
  @override
  void dispose() async{
    
    super.dispose();
    //await Tflite.close();
    controller!.dispose();
  }

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                  child: ElevatedButton(
                onPressed: () {
                  initCamera();
                },
                child: Container(
                  margin: EdgeInsets.only(top: 35),
                  height: 270,
                  width: 360,
                  // ignore: unnecessary_null_comparison
                  child: imgcamera == null
                      ? Container(
                          height: 470,
                          width: 360,
                          child: Icon(
                            Icons.photo_camera_front,
                            size: 40,
                          ),
                        )
                      : AspectRatio(
                          aspectRatio: controller!.value.aspectRatio,
                          child: CameraPreview(controller),
                        ),
                ),
              ))
                ]
              ),
              Center(
                child:
                 Container(
                   margin: EdgeInsets.only(top: 55.0),
                   child: SingleChildScrollView(
                     child: MyQuizPage(),
                     ),
                      
                 ),
              ),
              Text(result),
              
            ],
          ),
        ),
      ),
    );
  }
}

