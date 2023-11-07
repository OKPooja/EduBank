import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:need/Login_Signup_Screens/welcome.dart';
import 'login.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return WelcomePage();
          } else{
            return LoginPage();
          }
        },
      )
    );
  }
}
