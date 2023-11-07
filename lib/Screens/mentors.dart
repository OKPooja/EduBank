import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


class Mentors extends StatelessWidget {
  final String mentorName;
  final String mentorImage;
  final String mentorInfo;
  final int mentorCoins;

  Mentors({
    required this.mentorName,
    required this.mentorImage,
    required this.mentorInfo,
    required this.mentorCoins,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        elevation: 2.0,
        margin: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              mentorImage,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            ListTile(
              title: Text(mentorName, style: TextStyle(fontSize: 20)),
              subtitle: Text('Coins: $mentorCoins'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                mentorInfo,
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('Contact'),
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: () {
                    // Add book action here
                  },
                  child: Text('Book'),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }

}

