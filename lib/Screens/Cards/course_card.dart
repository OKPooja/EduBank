import 'package:flutter/material.dart';
import 'package:need/Screens/Course/Mutual%20funds/showlevels.dart';
import 'package:need/Screens/Course/Share%20market/showlevels.dart';

class CourseCard extends StatelessWidget {
  final String imageUrl, title;
  const CourseCard({super.key, required this.imageUrl, required this.title });

  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: () {
              if(title == "Mutual Funds"){
                Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShowLevelsMutualfunds()));
              }
              else if(title == "Share Market"){
                Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShareMarketLevels()));
              }
            },
            child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Image.network(
                    imageUrl,
                    height: 120,
                    width: 170,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
