import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:need/Screens/Course/Mutual%20funds/Mlevel2.dart';
import 'package:need/Screens/Course/Mutual%20funds/Mlevel3.dart';
import 'Mlevel1.dart';

class ShowLevelsMutualfunds extends StatefulWidget {
  const ShowLevelsMutualfunds({super.key});

  @override
  State<ShowLevelsMutualfunds> createState() => _ShowLevelsMutualfundsState();
}

class _ShowLevelsMutualfundsState extends State<ShowLevelsMutualfunds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(57, 37, 110, 1),
        foregroundColor: Colors.white,
        title: Text(
          "Mutual funds Course",
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

              Mlevel1(),
              Mlevel2(),
              Mlevel3(),
            ],
          ),
        ),
      ),
    );
  }
}
