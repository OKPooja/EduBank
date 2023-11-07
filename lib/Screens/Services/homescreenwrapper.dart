import 'package:flutter/material.dart';
import 'package:need/Screens/banking.dart';
import 'package:need/Screens/community_page.dart';
import 'package:need/Screens/course_quiz.dart';
import '../bottom_navBar.dart';
//import '../communityPage_new.dart';
import '../home.dart';

class HomePageWrapper extends StatefulWidget {
  const HomePageWrapper({super.key});

  @override
  _HomePageWrapperState createState() => _HomePageWrapperState();
}

class _HomePageWrapperState extends State<HomePageWrapper> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: selectedIndex,
        onTabTapped: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = HomePage();
        break;
      case 1:
        widget = const CourseQuiz();
        break;
      case 2:
        widget = const BankingPage();
        break;
      case 3:
        widget = const CommunityPage();
        break;
      default:
        widget = HomePage();
        break;
    }
    return widget;
  }
}
