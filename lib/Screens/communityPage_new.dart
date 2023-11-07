import 'package:flutter/material.dart';
import 'Cards/community_card.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  final List<TweetData> tweets = [
    TweetData(
      "Pooja",
      "Invested in a new stock today! #StockMarket. Remember to always do thorough research before making investment decisions. It pays off in the long run.",
    ),
    TweetData(
      "Manish",
      "Just read an interesting article about personal finance. Learning about budgeting and saving has been a game-changer for me. Setting financial goals has never been more important.",
    ),
    TweetData(
      "Shruti",
      "Diversifying my investment portfolio. #Finance. Don't put all your eggs in one basket! Spreading investments across different assets helps manage risk. Remember, patience is a key virtue in investing.",
    ),
    TweetData(
      "Jitesh",
      "Attended a seminar on retirement planning today. Starting early and having a clear plan is crucial for a comfortable retirement. It's never too early to plan for the future.",
    ),
    TweetData(
      "Amit",
      "Staying updated on economic indicators like GDP growth and inflation rates. It gives valuable insights for making investment decisions. Economic trends have a significant impact on our finances.",
    ),
  ];

  // Function to add a new tweet
  void addTweet(String username, String content) {
    setState(() {
      tweets.add(TweetData(username, content));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF192c49),
        automaticallyImplyLeading: false,
        title: Center(child: Text('Feeds')),
      ),
      body: ListView.builder(
        itemCount: tweets.length,
        itemBuilder: (context, index) {
          return TweetCard(
            username: tweets[index].username,
            content: tweets[index].content,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show dialog to input data
          showDialog(
            context: context,
            builder: (BuildContext context) {
              String username = '';
              String content = '';

              return AlertDialog(
                title: Text('Add a New Feed'),
                content: Container(
                  height: 120,
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (value) {
                          username = value;
                        },
                        decoration: InputDecoration(labelText: 'Username'),
                      ),
                      TextField(
                        onChanged: (value) {
                          content = value;
                        },
                        decoration: InputDecoration(labelText: 'Post Feed'),
                      ),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      addTweet(username, content);
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Text('Add Tweet'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF192c49),
      ),
    );
  }
}

class TweetData {
  final String username;
  final String content;

  TweetData(this.username, this.content);
}
