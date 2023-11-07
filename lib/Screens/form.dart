import 'package:flutter/material.dart';
import 'data.dart';

class EditProfilePage extends StatefulWidget {
  final String userEmail;

  EditProfilePage({required this.userEmail});

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileNoController = TextEditingController();
  final TextEditingController designationController = TextEditingController();
  String userId = ''; // Add a variable to store userId

  @override
  void initState() {
    super.initState();
    fetchUserDetails();
  }

  void fetchUserDetails() {
    // Find the user details based on the email
    UserData? user = dummyUserData.firstWhere(
          (user) => user.email == widget.userEmail,
      orElse: () => UserData(
        userId: 'No user found',
        name: 'No user found',
        mobileNo: 'No user found',
        designation: 'No user found',
        email: 'No user found',
      ),
    );
    setState(() {
      userId = user.userId; // Store the userId
      nameController.text = user.name;
      mobileNoController.text = user.mobileNo;
      designationController.text = user.designation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(57, 37, 110, 1),
        foregroundColor: Colors.white,
        title: Text("Edit Profile"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: mobileNoController,
              decoration: InputDecoration(labelText: 'Mobile Number'),
            ),
            TextField(
              controller: designationController,
              decoration: InputDecoration(labelText: 'Designation'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(98, 71, 170, 1),
                foregroundColor: Colors.white,
                elevation: 4, // Shadow elevation
                minimumSize: Size(80, 40),
              ),
              onPressed: () {
                // Get the updated user data from the text fields
                final updatedName = nameController.text;
                final updatedMobileNo = mobileNoController.text;
                final updatedDesignation = designationController.text;

                // Create a UserData object with the updated data
                final updatedUser = UserData(
                  email: widget.userEmail,
                  userId: userId, // Use the stored userId
                  name: updatedName,
                  mobileNo: updatedMobileNo,
                  designation: updatedDesignation,
                );

                // Update the user data in the list
                final updatedUserDataList = List<UserData>.from(dummyUserData); // Use the dummyUserData list
                final userIndex = updatedUserDataList.indexWhere((user) => user.email == widget.userEmail);
                if (userIndex != -1) {
                  updatedUserDataList[userIndex] = updatedUser;
                } else {
                  // Handle the case where the user doesn't exist in the list
                }

                Navigator.pop(context, updatedUserDataList);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
