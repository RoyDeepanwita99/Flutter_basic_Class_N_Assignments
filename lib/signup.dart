// multiple select item
//snacbar

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/MainScreen.dart';
import 'package:flutter_application_1/login2.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Interest {
  final int credit;
  final String title;

  Interest(this.title, this.credit);
}

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupSreenState();
}

class _SignupSreenState extends State<SignupScreen> {
  //hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
  final List<Interest> _interests = [
    Interest("Programming", 3),
    Interest("Problem Solving", 3),
    Interest("Problem Solving", 3),
    Interest("Machine Learning", 3),
    Interest("Data Structure", 3),
    Interest("Algorithm", 3),
    Interest("Mobile Computing", 3),
    Interest("Computer Network", 3),
    Interest("Data Analysis", 3),
    Interest("Image Processing", 3),
    Interest("Operating System", 3),
    Interest("Flutter", 3),
    Interest("Syber Security", 3),

    // Interest(credit: 2, title: "Networking"),
    // Interest(credit: 3, title: "Problem Solving"),
    // Interest(credit: 2, title: "Problem Solving"),
    // Interest(credit: 3, title: "Machine Learning"),
    // Interest(credit: 2, title: "Data Structure"),
    // Interest(credit: 3, title: "Algorithm"),
    // Interest(credit: 2, title: "Web Developing"),
    // Interest(credit: 3, title: "Mobile Computing"),
  ];
  List<Interest> _selectedinterests = [];

  ///hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
  late String username = ' ';
  late String email = ' ';

  late String password;
  late String userNameError = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        backgroundColor: Colors.black12,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Text("Welcome",
            //     style: GoogleFonts.concertOne(
            //       textStyle: TextStyle(fontSize: 35),
            //       fontSize: 48,
            //       fontWeight: FontWeight.w700,
            //       fontStyle: FontStyle.italic,
            //     )),
            TextFormField(
              style: TextStyle(fontSize: 16),
              onChanged: (value) {
                print('user name :$value');
                setState(() {
                  username = value;
                  if (value.contains('@')) {
                    userNameError = 'Dont use @';
                  } else {
                    userNameError = '';
                  }
                });
              },
              validator: (value) {
                return value != null && value.contains('@')
                    ? 'Dont use @'
                    : null;
              },
              decoration: InputDecoration(
                  label: Text("User Name"),
                  icon: Icon(Icons.people),
                  hintText: "Enter user name",
                  hintStyle: TextStyle(color: Colors.grey),
                  errorText: userNameError.isEmpty ? null : userNameError),
            ),
            TextFormField(
              style: TextStyle(fontSize: 16),
              onChanged: (value) {
                print('user name :$value');
                setState(() {
                  username = value;
                  if (value.contains('@')) {
                    userNameError = 'Dont use @';
                  } else {
                    userNameError = '';
                  }
                });
              },
              validator: (value) {
                return value != null && value.contains('@')
                    ? 'Dont use @'
                    : null;
              },
              decoration: InputDecoration(
                  label: Text("Email"),
                  icon: Icon(Icons.mail),
                  hintText: "Enter email",
                  hintStyle: TextStyle(color: Colors.grey),
                  errorText: userNameError.isEmpty ? null : userNameError),
            ),
            TextFormField(
              style: TextStyle(fontSize: 16),
              onChanged: (value) {
                print('user name :$value');
                setState(() {
                  username = value;
                  if (value.contains('@')) {
                    userNameError = 'Dont use @';
                  } else {
                    userNameError = '';
                  }
                });
              },
              validator: (value) {
                return value != null && value.contains('@')
                    ? 'Dont use @'
                    : null;
              },
              decoration: InputDecoration(
                  label: Text("Password"),
                  icon: Icon(Icons.key_off),
                  hintText: "Enter password",
                  hintStyle: TextStyle(color: Colors.grey),
                  errorText: userNameError.isEmpty ? null : userNameError),
            ),
            SizedBox(
              height: 30,
            ),

            //hhhhhhhhhhhhhhhhhhhhhhhhhh
            ///

            MultiSelectDialogField(
              buttonIcon: Icon(Icons.access_time_sharp),
              items:
                  _interests.map((e) => MultiSelectItem(e, e.title)).toList(),
              listType: MultiSelectListType.CHIP,
              onConfirm: (values) {
                _selectedinterests = values;
              },
              ///////////
              onSelectionChanged: (p0) {
                print('on selected change : ${p0.length}');
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: Colors.amber,
                  content: Text('${p0.length} interrests are selected'),
                ));
              },
            ),

            //hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh

            ElevatedButton(
              onPressed: () {
                //username
                String username = 'BU CSE';

                //email
                String email = 'abcd@gmail.com';

                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        MainScreen(username: username, email: email)));
              },
              child: Text("Signup"),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Already Have an Account?"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LoginScreen2(),
                ));
              },
              child: Text("Try Login"),
            ),
          ],
        ),
      ),
    );
  }
}
