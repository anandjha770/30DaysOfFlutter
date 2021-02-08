import 'dart:ui';

import 'package:awesome_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeBtn = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter usernae", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password", labelText: "Password"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
            // )
            InkWell(
              onTap: () async {
                setState(() {
                  changeBtn = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeBtn?50:150,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10)),
                child: changeBtn ?Icon(Icons.done): Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
