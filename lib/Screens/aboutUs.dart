import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(57, 37, 110, 1),
        foregroundColor: Colors.white,
        title: Text("About Us"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'About Us',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Welcome to our financial empowerment app! We are a passionate team dedicated to helping you gain control of your financial future. Our mission is to simplify complex financial topics and provide you with the knowledge and tools you need to make informed decisions about your money.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'What We Offer',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '• Simplified lessons on complex financial topics\n'
                  '• Interactive quizzes to test your knowledge\n'
                  '• Access to experienced mentors for personalized guidance',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              "Join us today to start your journey towards financial empowerment if you haven't already!",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
