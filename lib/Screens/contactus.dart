import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(57, 37, 110, 1),
        foregroundColor: Colors.white,
        title: Text("Contact Us"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact Information:',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email: edubank724@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Contact No: 9848272929'),
              ),
              SizedBox(height: 20.0),
              Text(
                'Send us a message:',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Your message...',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(98, 71, 170, 1),
                  foregroundColor: Colors.white,
                  elevation: 4, // Shadow elevation
                  minimumSize: Size(80, 40),
                ),
                child: Text('Send Message'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
