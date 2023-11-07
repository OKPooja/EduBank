import 'package:flutter/material.dart';

class TweetCard extends StatefulWidget {
  final String username;
  final String content;

  TweetCard({required this.username, required this.content});

  @override
  State<TweetCard> createState() => _TweetCardState();
}

class _TweetCardState extends State<TweetCard> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromRGBO(57, 37, 110, 1),
              child: Text(
                widget.username[0].toUpperCase(),
                style: TextStyle(
                color: Colors.white,
              ),),
            ),
            title: Text(
                widget.username,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(widget.content),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: isFav
                    ? Icon(
                        Icons.favorite_rounded,
                        color: Colors.red,
                      )
                    : Icon(
                        Icons.favorite_border,
                      ),
                onPressed: () {
                  setState(() {
                    isFav = !isFav;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  // Handle share button tap here
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
