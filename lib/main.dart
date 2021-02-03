import 'package:flutter/material.dart';

void main(){
  runApp(MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("30DaysOfCode"),
          ),
        ),
      ),
    );
  }
}