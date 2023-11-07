import 'package:flutter/material.dart';

class LevelChildrenCard extends StatelessWidget {
  final String imageUrl, title, subtitle;
  const LevelChildrenCard({super.key, required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle onTap event
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageUrl,
                height: 90,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
