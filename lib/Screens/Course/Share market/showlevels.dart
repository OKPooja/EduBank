import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:need/Screens/Course/Share%20market/ShareLevel2.dart';
import 'package:need/Screens/Course/Share%20market/ShareLevel3.dart';
import 'package:need/Screens/Course/Share%20market/Sharelevel1.dart';

class ShareMarketLevels extends StatefulWidget {
  const ShareMarketLevels({super.key});

  @override
  State<ShareMarketLevels> createState() => _ShareMarketLevelsState();
}

class _ShareMarketLevelsState extends State<ShareMarketLevels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(57, 37, 110, 1),
        foregroundColor: Colors.white,
        title: Text(
            "Share Market Course",
            style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SLevel1(),
              SLevel2(),
              SLevel3(),
            ],
          ),
        ),
      ),
    );
  }
}