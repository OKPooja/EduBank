import 'package:flutter/material.dart';

import '../../util/colors.dart';

class AccountOpening1 extends StatefulWidget {
  const AccountOpening1({Key? key}) : super(key: key);

  @override
  State<AccountOpening1> createState() => _AccountOpening1State();
}

class _AccountOpening1State extends State<AccountOpening1> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF192c49),
        title: Text('Current Account'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                "Steps to open a current account:\n\n"
                    '1.Research and Choose a Bank:'
                'Start by researching banks in your area or those that offer the services you need. Consider factors such as fees, account types, branch locations, and online banking options.\n\n'
                '2.Visit the Bank Branch:'
                "Go to a local branch of the bank you've chosen. You can often find the branch nearest to you on the bank's website.\n\n"
                "3.Speak to a Bank Representative:"
                "When you arrive at the bank, ask to speak to a bank representative or account manager who can guide you through the account opening process.\n\n"
                "4.Provide Identification:"
                "You'll typically need to provide personal identification documents. These may include:\n"
                  "Passport or national ID card\n"
              "Proof of address (utility bill, rental agreement, etc.)\n"
                "Tax identification number (if applicable)\n\n"
                "5.Complete Application Form:"
                "Fill out the bank's current account application form. This form will ask for personal information, such as your name, contact details, employment information, and financial history\n\n"
                "6.Choose the Type of Current Account:"
                "Decide on the specific type of current account you want to open. Banks often offer various account options tailored to different needs, such as basic accounts, premium accounts, or business accounts.",
                style: TextStyle(
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.center,
              ),
                Container(
                  height: 90,
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
                                    Text("SBI ",
                                        style:
                                        TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w800)),
                                    // Text("account? ",
                                    //     style:
                                    //     TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w800)),
                                    // SizedBox(height: 10,),
                                    // Text("Know more about opening",
                                    //     style:
                                    //     TextStyle(fontSize: 14, color:Appcolor.idColor,fontWeight: FontWeight.w800)),
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
                                        {
                                          Navigator.pushNamed(context, 'https://www.onlinesbi.sbi/'); // Navigate to the web page screen
                                        };
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
                )
            ],
            ),

          ),
        ),
      ),
    );;
  }
}
