import 'package:flutter/material.dart';
import 'package:flutter_application_1/assignment5.2.dart';

class assignment5_3 extends StatefulWidget {
  const assignment5_3({super.key});

  @override
  State<assignment5_3> createState() => _assignment5_3State();
}

class _assignment5_3State extends State<assignment5_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(255, 255, 255, 255),
      //   title: Text("Coeurdes Alpes"),
      // ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            clipBehavior: Clip
                .none, // Allows the icon to be rendered outside the stack bounds
            children: [
              Padding(
                padding: EdgeInsets.all(16.0), // Adjust the padding as needed
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: Image(
                      image: AssetImage('assets/1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -13,
                right: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.red,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.favorite,
                      color: Color.fromARGB(255, 226, 16, 5),
                      size: 30,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 26,
                left: 26,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      // Handle back button press
                      {
                        print('Button pressed');
                        // Add your button action here
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => assignment5_2()));
                      }
                      ;
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 96, 94, 94),
                      size: 20,
                    ),
                    iconSize: 30,
                  ),
                ),
              ),
            ],
          ),
          ////////////////////////////////////////////////////////end figure
          ///
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Coeurdes Alpes",
                style: TextStyle(fontSize: 30),
              ),
              Text("Show Map")
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text("4.5(355 Reviews)"),
            ],
          ),

          ////////////////////////////////////////////////
          ///
          Text(
              "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ...."),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "View more",
                style: TextStyle(color: Colors.blue),
              ),
              Icon(
                Icons
                    .arrow_downward_outlined, // Example of bottom icon, adjust as needed
                size: 20,
              ),
            ],
          ),

          ///////////////////////////facilities
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Facilities',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),

          /////////////////////////////
          SizedBox(
              height:
                  5), // Add some space between the text "Facilities" and the icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildBorderedIconWithText(Icons.wifi, "Heater"),
              _buildBorderedIconWithText(Icons.dinner_dining, "Dinner"),
              _buildBorderedIconWithText(Icons.bathtub, "Tub"),
              _buildBorderedIconWithText(Icons.pool, "Pool"),
            ],
          ),
          ///////////////////////////////////facilities end
          ///
          ///
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('Price'),
                  Text(
                    '5000',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 3, 202,
                          36), // Change the color to your desired color
                    ),
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: buttonStyle,
                    onPressed: () => (print("onPressed")),
                    child: Row(
                      children: [
                        Text("Book Now",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        SizedBox(width: 7),
                        Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ]),
      ),
    );
  }

  Widget _buildBorderedIconWithText(IconData iconData, String label) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200], // Set gray background color
      ),
      child: Column(
        children: [
          Icon(
            iconData,
            size: 65,
          ),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  ButtonStyle buttonStyle = ButtonStyle(
      shape: MaterialStateProperty.all(const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)))),
      backgroundColor:
          MaterialStateProperty.all(Color.fromARGB(255, 84, 3, 245)),
      textStyle: MaterialStateProperty.all(TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white)), // Text color set to white
      padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 80, vertical: 15)));
}
