// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import '../components/rounded_button.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = "/registrationscreen";
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          padding: EdgeInsets.only(top: 150),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: "Enter Email"),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: "Enter Password"),
                ),
                SizedBox(
                  height: 24.0,
                ),
                roundedButton(
                  context,
                  Colors.blueAccent,
                  "Register",
                  () => {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
