// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screens/welcome_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:flutter/services.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.id: (context) => LoginScreen(),
  RegistrationScreen.id: (context) => RegistrationScreen(),
  ChatScreen.id: (context) => ChatScreen(),
  WelcomeScreen.id: (context) => WelcomeScreen(),
};

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: routes,
    );
  }
}
