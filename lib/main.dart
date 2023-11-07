import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:need/Login_Signup_Screens/welcome.dart';
import 'Login_Signup_Screens/auth.dart';
import 'Login_Signup_Screens/login.dart';
import 'Login_Signup_Screens/signup.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage   (),
    ),
  );
}

