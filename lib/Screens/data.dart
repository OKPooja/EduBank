class UserData {
  final String userId;
  final String name;
  final String mobileNo;
  final String designation;
  final String email;

  UserData({
    required this.userId,
    required this.name,
    required this.mobileNo,
    required this.designation,
    required this.email,
  });
}

List<UserData> dummyUserData = [
  UserData(
    email: 'poojagawade@gmail.com',
    userId: 'xvlOkDKNKWSMQoGs1af3tdpSwaA3',
    name: 'Pooja Gawade',
    mobileNo: '9992099920',
    designation: 'Flutter Developer',
  ),
  UserData(
    userId: '8QiVnaGoM2dJYLNAFjkLHaD71PW2',
    name: 'Manish Dusa',
    mobileNo: '9876543210',
    designation: 'Product Manager',
    email: 'manish@gmail.com',
  ),
  UserData(
    userId: '8QiVnaGoM2dJYLNAFjkLHaD71PW2',
    name: 'Shruti Ghagare',
    mobileNo: '9912199121',
    designation: 'UI/UX Designer',
    email: 'shruti@gmail.com',
  ),
  UserData(
    userId: '',
    name: 'Pragya Ganani',
    mobileNo: ' ',
    designation: ' ',
    email: 'pragyaganani@gmail.com',
  ),
  UserData(
    userId: 'IMbfQvS8BBVWELTR6NFoYmueeqx2',
    name: 'Pragya Ganani',
    mobileNo: ' ',
    designation: ' ',
    email: 'pragya@gmail.com',
  ),
  UserData(
    userId: '',
    name: 'Govind Dunani',
    mobileNo: ' ',
    designation: ' ',
    email: 'govind@gmail.com',
  ),
  UserData(
      userId: '',
      name: 'Random User',
      mobileNo: ' ',
      designation: ' ',
      email: 'random@gmail.com',
  ),
  UserData(
    userId: '',
    name: 'Aditya Verma',
    mobileNo: ' ',
    designation: ' ',
    email: 'aditya@gmail.com',
  ),
];
