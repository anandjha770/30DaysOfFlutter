import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Anand";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("30DaysOfCode"),
      ),
      body: Center(
        child: Container(
          child: Text("Hey $name, " + "Welcome to $days Days of Code"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
