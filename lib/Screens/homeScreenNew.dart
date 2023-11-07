import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:need/Screens/mentors.dart';
import '../Login_Signup_Screens/login.dart';
import 'aboutUs.dart';
import 'actualProfilePage.dart';
import 'contactus.dart';
import 'course_quiz.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HomeScreenNew());
}
class HomeScreenNew extends StatefulWidget {
  const HomeScreenNew({Key? key}) : super(key: key);

  @override
  State<HomeScreenNew> createState() => _HomeScreenStateNew();
}

class _HomeScreenStateNew extends State<HomeScreenNew> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void signUserOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }
  String userEmail = '';
  String name = '';
  String mobileNo = '';
  String designation = '';

  @override
  void initState() {
    super.initState();
    fetchUserEmail();
    fetchUserDetails();
  }

  void fetchUserDetails() {
    // Find the user details based on the email
    UserData? user = dummyUserData.firstWhere(
          (user) => user.email == userEmail,
      orElse: () => UserData(
        userId: 'No user found',
        name: 'User',
        mobileNo: 'No user found',
        designation: 'No user found',
        email: 'No user found',
      ),
    );

    setState(() {
      name = user.name;
      mobileNo = user.mobileNo;
      designation = user.designation;
    });
    //print(name);
  }
  void fetchUserEmail() {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        userEmail = user.email ?? 'No email found';
      });
    } else {
      // Handle the case where there's no authenticated user
      userEmail = 'No user found';
    }
    //print(userEmail);
  }

  final List<String> imgList = [
    'assets/financial literacy.png',
    'https://www.rainbook.org/png/how-money-works.png',
    'https://media.licdn.com/dms/image/D5612AQFUCvJclf8gdw/article-cover_image-shrink_720_1280/0/1685715012677?e=2147483647&v=beta&t=62gU_6jmo0Oj2D5jx2I1lUlKXw5NHNLRvajuTgesjDY'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width / 1.5, // Adjust the width as needed
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 130,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(57, 37, 110, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'EduBank',
                      style: GoogleFonts.odorMeanChey(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreenNew()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.library_books),
                title: Text('Courses'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CourseQuiz()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ));
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help & Support'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ContactUsPage(),
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About Us'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AboutUsPage(),
                  ));
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log Out'),
                onTap: () {
                  signUserOut(context);
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CourseQuiz()),
          );
        },
        child: Image.asset(
          'assets/edu-getstarted.png', // Replace with your image path
          width: 140,
          height: 65,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
            //alignment: Alignment.topLeft,
            children: <Widget>[

              // Positioned(
              //   top: 90,
              //   left: 30,
              //   child: Text(
              //     "Hello Pooja!",
              //     style: TextStyle(
              //       fontSize: 34,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(128, 76, 213, 0.48),
                    //color: Colors.black,
                  ),
                  // Your container content here
                ),
              Image.asset(
                'assets/edu-top.png',
                width: double.infinity,
                height: 220,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 40),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                      ),
                    );
                  },
                  child:  Image.asset(
                    'assets/girl.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130, left: 40),
                // child: Text(
                //   "Hello Pooja",
                //   style: GoogleFonts.inter(
                //     fontSize: 28,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello ',
                        style: GoogleFonts.inter(
                        fontSize: 28,
                         fontWeight: FontWeight.bold,
                       ),
                    ),
                    Text(
                      name,
                      style: GoogleFonts.inter(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 310),
                child: GestureDetector(
                  onTap: () {
                    _scaffoldKey.currentState?.openEndDrawer();
                  },
                  child:  Icon(
                    Icons.menu_sharp ,
                    size: 40.0,
                    color: Colors.black,
                  ),
                ),
              ),

            ],
          ),
            CarouselSlider(
              items: imgList.map<Widget>(
                    (item) {
                  if (item.startsWith('https://')) {
                    // Load network image
                    return Center(
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: 1000,
                      ),
                    );
                  } else {
                    // Load asset image
                    return Center(
                      child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        width: 1000,
                      ),
                    );
                  }
                },
              ).toList(),
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Meet Our Mentors",
              style: GoogleFonts.odorMeanChey(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Rounded corners for the Container
              ),
              child: Column(
                children: [

                  Row(
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    topLeft: Radius.circular(50),
                                  ),
                                  color: Color.fromRGBO(128, 76, 213, 0.37),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 70,
                            top: 10,
                            child: Container(
                              height: 110,
                              width: 100,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                image: DecorationImage(
                                    image: AssetImage('assets/profile.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 90,
                            left: 5,
                            child: Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                                color: Color.fromRGBO(128, 76, 213, 0.61),
                              ),
                            ),
                          ),
                          Positioned(
                            top:100,
                            left:20,
                            child:
                              Column(
                                children: [
                                  Text(
                                  "400",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "coins",
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),

                          ),
                        ],
                      ),
                      Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: SizedBox(
                      width: 155,
                      height: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Aryan Sawant",
                            style: GoogleFonts.odorMeanChey(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Wrap(
                            direction: Axis.horizontal,
                            children:  [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmeod tempor",
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height:10,
                          // ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mentors(
                                      // Pass your dummy arguments here
                                      mentorName: 'Aryan Sawant',
                                      mentorImage: 'assets/person.jpeg',
                                      mentorInfo: 'Aditya Sawant is a highly skilled financial advisor with over 10 years of experience in helping individuals and businesses achieve their financial goals. He specializes in investment strategies, retirement planning, and wealth management. Aditya is dedicated to providing personalized financial guidance to his clients and helping them build a secure financial future.',
                                      mentorCoins: 400,
                                    ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(250, 250, 240, 1),
                                foregroundColor: Colors.black,
                                elevation: 4, // Shadow elevation
                                minimumSize: Size(60, 25),
                              ),
                              child: Text(
                                  "Know More",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                  ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Rounded corners for the Container
              ),
              child: Column(
                children: [

                  Row(
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    topLeft: Radius.circular(50),
                                  ),
                                  color: Color.fromRGBO(128, 76, 213, 0.37),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 70,
                            top: 10,
                            child: Container(
                              height: 110,
                              width: 100,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                image: DecorationImage(
                                    image: AssetImage('assets/profile.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 90,
                            left: 5,
                            child: Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                                color: Color.fromRGBO(128, 76, 213, 0.61),
                              ),
                            ),
                          ),
                          Positioned(
                            top:100,
                            left:20,
                            child:
                            Column(
                              children: [
                                Text(
                                  "200",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "coins",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),

                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: SizedBox(
                          width: 155,
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ram Singh",
                                style: GoogleFonts.odorMeanChey(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Wrap(
                                direction: Axis.horizontal,
                                children:  [
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmeod tempor",
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   height:10,
                              // ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Mentors(
                                          mentorName: 'Ram Singh',
                                          mentorImage: 'assets/person.jpeg',
                                          mentorInfo: 'Meet Ram Singh, a seasoned financial expert known for his exceptional knowledge and commitment to financial well-being. With a strong background in investment management, Aditya has successfully guided numerous clients towards financial success. He has a keen eye for market trends and can offer valuable insights into stocks, bonds, and real estate investments.',
                                          mentorCoins: 200,
                                        ),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(250, 250, 240, 1),
                                    foregroundColor: Colors.black,
                                    elevation: 4, // Shadow elevation
                                    minimumSize: Size(60, 25),
                                  ),
                                  child: Text(
                                    "Know More",
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Rounded corners for the Container
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    topLeft: Radius.circular(50),
                                  ),
                                  color: Color.fromRGBO(128, 76, 213, 0.37),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 70,
                            top: 10,
                            child: Container(
                              height: 110,
                              width: 100,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                image: DecorationImage(
                                    image: AssetImage('assets/profile.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 90,
                            left: 5,
                            child: Container(
                              width: 60,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                                color: Color.fromRGBO(128, 76, 213, 0.61),
                              ),
                            ),
                          ),
                          Positioned(
                            top:100,
                            left:20,
                            child:
                            Column(
                              children: [
                                Text(
                                  "100",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "coins",
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),

                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: SizedBox(
                          width: 155,
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Omkar Joshi",
                                style: GoogleFonts.odorMeanChey(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Wrap(
                                direction: Axis.horizontal,
                                children:  [
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmeod tempor",
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   height:10,
                              // ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Mentors(
                                          mentorName: 'Omkar Joshi',
                                          mentorImage: 'assets/person.jpeg',
                                          mentorInfo: 'Introducing Omkar Joshi, a dedicated financial advisor with a passion for helping people achieve financial freedom. With a wealth of experience in the finance industry, Aditya has assisted countless clients in making informed investment decisions. His expertise spans across various financial instruments, including stocks, mutual funds, and retirement planning.',
                                          mentorCoins: 100,
                                        ),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromRGBO(250, 250, 240, 1),
                                    foregroundColor: Colors.black,
                                    elevation: 4, // Shadow elevation
                                    minimumSize: Size(60, 25),
                                  ),
                                  child: Text(
                                    "Know More",
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 23,
            ),
          ],
        ),
      ),
    );
  }
}