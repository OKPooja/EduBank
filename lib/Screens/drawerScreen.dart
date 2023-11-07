import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../Login_Signup_Screens/login.dart';
import 'configuration.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  void signUserOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(9, 22, 56, 1),
      padding: EdgeInsets.only(top: 50, bottom: 70, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(backgroundColor: Colors.white),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    'Manish Dusa',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                  //Text('Active Status',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
          Column(
            children: drawerItems
                .map(
                  (element) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          element['icon'],
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          element['title'],
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 2,
                  height: 20,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    signUserOut(context);
                  },
                  child: Text(
                    'Log out',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
