import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Screens/Services/homescreenwrapper.dart';
import 'login.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController1 = TextEditingController();
  final TextEditingController passwordController2 = TextEditingController();

  String errorMessage = '';
  Future<void> signUp(BuildContext context) async {
    try {
      if (passwordController1.text == passwordController2.text) {
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController1.text,
        );

        if (userCredential.user != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePageWrapper()),
          );
        }
      } else {
        setState(() {
          errorMessage = 'Passwords mismatch';
        });
      }
    } catch (e) {
      print('Error during registration: $e');
      setState(() {
        errorMessage = 'Registration failed. Please try again.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                     Text("Sign up",
                      style: GoogleFonts.odorMeanChey(
                        fontWeight: FontWeight.w200,
                        fontSize: 55,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Text("Create an account, It's free!!", style: TextStyle(
                        fontSize: 23,
                        color: Colors.grey[700]
                    ),),
                  ],
                ),
                Column(
                  children: <Widget>[
                    makeInput(label: "Email", controller: emailController),
                    makeInput(label: "Password", obscureText: true, controller: passwordController1),
                    makeInput(label: "Confirm Password", obscureText: true, controller: passwordController2),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 3, left: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: const Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    ),
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      signUp(context); // Call the signUp function
                    },
                    color: Color.fromRGBO(57, 37, 110, 1),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.odorMeanChey(
                        fontWeight: FontWeight.w200,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account?"),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the login page when the "Login" text is tapped
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                // Error message displayed if passwords don't match
                if (errorMessage.isNotEmpty)
                  Text(
                    errorMessage,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false, required TextEditingController controller}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87
        ),),
        const SizedBox(height: 5,),
        TextField(
          controller: controller, // Use the provided controller
          obscureText: obscureText,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            ),
          ),
        ),
        const SizedBox(height: 30,),
      ],
    );
  }
}
