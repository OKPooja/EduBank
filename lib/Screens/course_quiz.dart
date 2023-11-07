import 'package:flutter/material.dart';
import 'package:need/Screens/Cards/course_card.dart';

class CourseQuiz extends StatefulWidget {
  const CourseQuiz({super.key});

  @override
  State<CourseQuiz> createState() => _CourseQuizState();
}

class _CourseQuizState extends State<CourseQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFF192c49),
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.menu,
      //       color: Colors.white,
      //     ),
      //     onPressed: () {
      //     },
      //   ),
      // ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 4.0,
            margin: EdgeInsets.all(16.0),
            color: Color.fromRGBO(57, 37, 110, 1),
            child: Container(
              width: MediaQuery.of(context).size.width, // Set the width to screen width
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Sections',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // GridView
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CourseCard(
                    imageUrl: 'https://media.istockphoto.com/id/508546190/photo/notebook-with-mutual-funds-sign-on-a-table-business-concept.jpg?s=612x612&w=0&k=20&c=oQt2vfmJn61DzNBnOccvRBatnbIOeigaNfrYIjUBk_I=',
                    title: 'Mutual Funds',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CourseCard(
                    imageUrl: "https://images.livemint.com/img/2023/01/04/600x338/Nifty_1667546435835_1672792988259_1672792988259.jpg",
                    title: "Share Market",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CourseCard(
                    imageUrl: 'https://cdn.pixabay.com/photo/2017/01/25/12/31/bitcoin-2007769_1280.jpg',
                    title: 'Cryptocurrency',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CourseCard(
                    imageUrl: 'https://images.newindianexpress.com/uploads/user/imagelibrary/2022/12/25/w900X450/tax.jpg?w=400&dpr=2.6',
                    title: 'Tax Exemptions',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CourseCard(
                    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrUCDEL1FWu7dMLpArDEUZ6XkNrGDapShGlA&usqp=CAU',
                    title: 'Commodities',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
