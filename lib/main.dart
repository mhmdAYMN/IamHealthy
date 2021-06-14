import 'package:flutter/material.dart';
import 'Input.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(

      ),

      initialRoute: 'input',

      routes: {
        'input' : (context)=> Input(),
        //'res' : (context)=> Result()

      },
    );
  }
}

