import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:flutter/widgets.dart';

class assignment2 extends StatefulWidget {
  const assignment2({super.key});

  @override
  State<assignment2> createState() => _assignment2State();
}

class _assignment2State extends State<assignment2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets\login.png', // Replace this with the path to your uploaded image
              width: 200, // Set width as needed
              height: 200, // Set height as needed
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
            /* IconButton(
              icon: Icon(Icons.account_circle),
              iconSize: 100.0,
              onPressed: () {
                // Action to perform when the icon button is pressed
              },
            ), */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Deepanwita Roy",
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 50, 109),
                        fontWeight: FontWeight.bold)),
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    // Action to perform when the icon button is pressed
                  },
                ),
              ],
            ),
            Text("20 Years old"),
            Text("Student"),
            Row(
              children: [
                Text(
                  "Interests",
                  style: TextStyle(
                    color: Color.fromARGB(255, 8, 50, 109),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 8),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(
                      8), // Add padding to give space around the text
                  child: Text(
                    "Travel",
                    style: TextStyle(
                        color: Colors.white), // Set text color to white
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Health",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Education",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Singing",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Painting",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Journey",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2),
            Row(
              children: [
                SizedBox(width: 8),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(
                      8), // Add padding to give space around the text
                  child: Text(
                    "Gardening",
                    style: TextStyle(
                        color: Colors.white), // Set text color to white
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Cleanliness",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Technology",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Walking",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Picturing",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "General",
                  style: TextStyle(color: Color.fromARGB(255, 8, 50, 109)),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                    "Fullname                                                                       Deepanwita Roy"),
              ],
            ),
            Row(
              children: [
                Text(
                    "Blood Group                                                                                         O+"),
              ],
            ),
            Row(
              children: [
                Text(
                    "Email                                                  deepanwita.cse7.bu@gmail.com"),
              ],
            ),
            Row(
              children: [
                Text(
                    "Phone                                                                                 01918840003"),
              ],
            ),
            IconButton(
              icon: Icon(Icons.add_circle_sharp),
              iconSize: 36.0,
              color: Colors.blue,
              onPressed: () {
                // Action to perform when the icon button is pressed
              },
            ),
          ],
        ),
      ),
    );
  }
}
