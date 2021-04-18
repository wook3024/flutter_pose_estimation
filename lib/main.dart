import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
// import 'package:opengl/opengl.dart';
import 'home.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initOpenGL();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error: $e.code\nError Message: $e.message');
  }
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tflite real-time detection',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Posenet Demo"),
        ),
        body: HomePage(cameras),
      ),
    );
  }
}
