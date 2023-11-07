import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'form.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase if needed

  runApp(ProfilePage());
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userEmail = '';
  String name = '';
  String mobileNo = '';
  String designation = '';

  @override
  void initState() {
    super.initState();
    fetchUserEmail();
    fetchUserDetails();
  }

  void fetchUserDetails() {
    // Find the user details based on the email
    UserData? user = dummyUserData.firstWhere(
          (user) => user.email == userEmail,
      orElse: () => UserData(
        userId: 'No user found',
        name: 'No user found',
        mobileNo: 'No user found',
        designation: 'No user found',
        email: 'No user found',
      ),
    );
    setState(() {
      name = user.name;
      mobileNo = user.mobileNo;
      designation = user.designation;
    });
  }

  void fetchUserEmail() {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        userEmail = user.email ?? 'No email found';
      });
    } else {
      // Handle the case where there's no authenticated user
      userEmail = 'No user found';
    }
    //print(userEmail);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
            children: <Widget> [
              // Image.asset(
              //   'assets/profileBg.png',
              //   width: 600,
              // ),
              Positioned(
                left: 30,
                child: Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(57, 37, 110, 1),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(400), bottomRight: Radius.circular(400), bottomLeft: Radius.circular(400)),
                  ),
                ),
              ),
              Positioned(
                top:360,
                right: 50,
                child: Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(57, 37, 110, 1),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(400), bottomRight: Radius.circular(400), bottomLeft: Radius.circular(400)),
                  ),
                ),
              ),
              Card(
                  elevation: 4, // Add some elevation for the card shadow
                  margin: EdgeInsets.all(30.0), // Add some margin around the card
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 180,),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(57, 37, 110, 0.80),
                                borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                        ),

                        Icon(
                          Icons.person,
                          size: 150.0,
                          color: Colors.black,
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          name, // Display user's name
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          designation, // Display user's designation
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        ListTile(
                          leading: Icon(Icons.email),
                          title: Text(userEmail), // Display the fetched user email
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text(mobileNo), // Display user's mobile number
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Navigate to the edit screen and pass the user data list
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfilePage(userEmail: userEmail,),
                              ),
                            ).then((result) {
                              if (result != null) {
                                setState(() {
                                  dummyUserData = result;
                                });
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(98, 71, 170, 1),
                            foregroundColor: Colors.white,
                            elevation: 4, // Shadow elevation
                            minimumSize: Size(80, 40),
                          ),
                          child: Text('Edit'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60,left: 200,),
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(57, 37, 110, 0.80),
                              borderRadius: BorderRadius.circular(80)
                            ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),

            ]
          ),
        ),
    );
  }
}