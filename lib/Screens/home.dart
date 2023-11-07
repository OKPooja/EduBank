import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:need/Login_Signup_Screens/login.dart';
import 'drawerScreen.dart';
import 'homeScreen.dart';
import 'homeScreenNew.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser;

  void signUserOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     IconButton(onPressed: () => signUserOut(context), icon: Icon(Icons.logout),),
      //   ],
      // ),
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreenNew(),
        ],
      ),
    );
  }
}
