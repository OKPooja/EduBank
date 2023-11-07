import 'package:flutter/material.dart';
import '../../util/colors.dart';
import 'account1_redirect.dart';

class BankingHome extends StatefulWidget {
  const BankingHome({Key? key}) : super(key: key);

  @override
  State<BankingHome> createState() => _BankingHomeState();
}

class _BankingHomeState extends State<BankingHome> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Appcolor.backGroundColor,
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                _headSection(),
                _listBill(),
                Positioned(
                  left:0,
                  top: 100,
                  child: Text(
                    "Banking",
                    style: TextStyle(
                      fontSize: 58,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF293952),
                    ),
                  ),),
              Positioned(
                left: 40,
                top: 80,
                child: Text(
                "Banking",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),),

              //   // Positioned(
              //   //   top: 300, // Adjust the top position as needed
              //   //   left: 0,
              //   //   right: 0,
              //   //   child: _listBill(),
              //   // ),
               ],
            ),
          ),
        ));
  }

  _headSection() {
    return Container(
      height: 800, // Adjust the height as needed
      child: Stack(
        children: [
          _mainBackGround(),
          // _curvedImageContainer(),
          //
          // _buttonContainer(),
        ],
      ),
    );
  }
//
//
//
//   _buttonContainer() {
//     return Positioned(
//       right: 58,
//       bottom: 15,
//
//       child: Container(
//         height: 60,
//         width: 60,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//               fit: BoxFit.cover, image: AssetImage("assets/lines2.png")),
//
//           // boxShadow: [
//           //   BoxShadow(
//           //     blurRadius: 0,
//           //     offset: Offset(0,1),
//           //   )
//           //]
//         ),
//       ),
//     );
//   }
//
  _mainBackGround() {
    return Positioned(
        // bottom: 10,
        // left: 0,
        child: Container(
          height: 250,
          // width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/bank_background.png"))),
        ),);
  }

  // _curvedImageContainer() {
  //   return Positioned(
  //       left: 0,
  //       right: -2,
  //       bottom: 10,
  //       // top: -20,
  //       child: Container(
  //         height: MediaQuery.of(context).size.height * 0.1,
  //         decoration: BoxDecoration(
  //             image: DecorationImage(
  //                 fit: BoxFit.cover, image: AssetImage("assets/curve.png"))),
  //       ));
  // }

  _listBill() {
    return Positioned(
      top: 270,
      child: Column(
        children: [
          Container(
            height: 110,
            width: MediaQuery.of(context).size.width-20,

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFd8dbe0),
                      offset: Offset(1, 1),
                      blurRadius: 20.0,
                      spreadRadius: 10)
                ]),
            child: Container(
              margin: const EdgeInsets.only(top: 10, left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 3, color: Colors.grey),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                    AssetImage("assets/current1.png"))),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("How to open a current ",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w800)),
                              Text("account? ",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w800)),
                              SizedBox(height: 10,),
                              Text("Know more about opening",
                                  style:
                                  TextStyle(fontSize: 14, color:Appcolor.idColor,fontWeight: FontWeight.w800)),
                              Text("a bank account",
                                  style:
                                  TextStyle(fontSize: 14, color:Appcolor.idColor,fontWeight: FontWeight.w800))
                              //more text copy Text()
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Appcolor.selectBackground,
                            ),
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => AccountOpening1()),
                                  );
                                },
                                child: Text(
                                  "Select",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Appcolor.selectColor
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 5,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Appcolor.selectColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)
                            )
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 110,
            width: MediaQuery.of(context).size.width-20,

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFd8dbe0),
                      offset: Offset(1, 1),
                      blurRadius: 20.0,
                      spreadRadius: 10)
                ]),
            child: Container(
              margin: const EdgeInsets.only(top: 10, left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 3, color: Colors.grey),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                    AssetImage("assets/saving1.png"))),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("How to open a savings ",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w800)),
                              Text("account? ",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w800)),
                              SizedBox(height: 10,),
                              Text("Know more about opening",
                                  style:
                                  TextStyle(fontSize: 14, color:Appcolor.idColor,fontWeight: FontWeight.w800)),
                              Text("a bank account",
                                  style:
                                  TextStyle(fontSize: 14, color:Appcolor.idColor,fontWeight: FontWeight.w800))
                              //more text copy Text()
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Appcolor.selectBackground,
                            ),
                            child: Center(

                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => AccountOpening1()),
                                  );
                                },
                                child: Text(
                                  "Select",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Appcolor.selectColor
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 5,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Appcolor.selectColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)
                            )
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 110,
            width: MediaQuery.of(context).size.width-20,

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFd8dbe0),
                      offset: Offset(1, 1),
                      blurRadius: 20.0,
                      spreadRadius: 10)
                ]),
            child: Container(
              margin: const EdgeInsets.only(top: 10, left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 3, color: Colors.grey),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                    AssetImage("assets/credit1.png"))),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("How to use a credit/ ",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w800)),
                              Text("debit card? ",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w800)),
                              SizedBox(height: 10,),
                              Text("Know more about using",
                                  style:
                                  TextStyle(fontSize: 14, color:Appcolor.idColor,fontWeight: FontWeight.w800)),
                              Text("a card",
                                  style:
                                  TextStyle(fontSize: 14, color:Appcolor.idColor,fontWeight: FontWeight.w800))
                              //more text copy Text()
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Appcolor.selectBackground,
                            ),
                            child: Center(

                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => AccountOpening1()),
                                  );
                                },
                                child: Text(
                                  "Select",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Appcolor.selectColor
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 5,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Appcolor.selectColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)
                            )
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 110,
            width: MediaQuery.of(context).size.width-20,

            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFd8dbe0),
                      offset: Offset(1, 1),
                      blurRadius: 20.0,
                      spreadRadius: 10)
                ]),
            child: Container(
              margin: const EdgeInsets.only(top: 10, left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 3, color: Colors.grey),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                    AssetImage("assets/upi1.png"))),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("What is upi id? ",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w800)),
                              // Text("account? ",
                              //     style:
                              //     TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w800)),
                              SizedBox(height: 10,),
                              Text("Know more about upi id",
                                  style:
                                  TextStyle(fontSize: 14, color:Appcolor.idColor,fontWeight: FontWeight.w800)),
                              // Text("a bank account",
                              //     style:
                              //     TextStyle(fontSize: 14, color:Appcolor.idColor,fontWeight: FontWeight.w800))
                              //more text copy Text()
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Appcolor.selectBackground,
                            ),
                            child: Center(

                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => AccountOpening1()),
                                  );
                                },
                                child: Text(
                                  "Select",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Appcolor.selectColor
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 5,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Appcolor.selectColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)
                            )
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
