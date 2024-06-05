import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/assignment5.2.dart';
import 'package:flutter_application_1/assignment5.3.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

class assignment5_1 extends StatefulWidget {
  const assignment5_1({super.key});

  @override
  State<assignment5_1> createState() => _assignment5_1State();
}

class _assignment5_1State extends State<assignment5_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 211, 199, 211),
      //   title: Text("Search"),
      // ),
      body: Stack(
        //alignment: Alignment.center,
        children: [
          const Image(
            image: AssetImage('assets/Rectangle988.png'),
            width: double.infinity, // Make the image take full width
            fit: BoxFit.cover,
            // height: 500,
          ),
          Positioned(
            top: 93,
            left: 100,
            child: Image(
              image: AssetImage('assets/Aspen.png'),
              width: 263,
              height: 126,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 80,
            child: ElevatedButton(
              onPressed: () {
                print('Button pressed');
                // Add your button action here
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => assignment5_2()));
              },
              style: ElevatedButton.styleFrom(
                // primary: Colors.purple, // Background color
                // onPrimary: Colors.white, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 150, vertical: 15), // Button padding
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ), // Text style
              ),
              child: Text('Explore'),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 80,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Plan your",
                    style: GoogleFonts.montserrat(
                        color: const Color.fromARGB(255, 251, 252, 252),
                        fontSize: 15),
                  ),
                  Text(
                    "Luxurious",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    "Vacation",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
