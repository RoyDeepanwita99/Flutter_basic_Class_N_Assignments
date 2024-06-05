import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  String _output = '00';
  String _operator = '';
  int input1 = 0;
  int input2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 211, 199, 211),
        title: Text("Calculator"),
      ),
      body: Center(
        child: Container(
          height: 520,
          width: 270,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(7),
              color: Color.fromARGB(255, 12, 12, 9)),
          child: Column(
            children: [
              Container(
                height: 165,
                width: 450,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        _output,
                        style: TextStyle(
                            fontSize: 35,
                            color: const Color.fromARGB(255, 228, 228, 226)),
                      ),
                    ),
                  ],
                ),
              ),
              //////////////////////
              ///
              ///
              ///
              ///
              ///
              ///
              ///
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 3),
                  ElevatedButton(
                    style: buttonStyle2,
                    onPressed: () => (print("onPressed")),
                    //onLongPress: () => (print("OnlongPress")),
                    child: Text("e"),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    style: buttonStyle2,
                    onPressed: () => (print("onPressed")),
                    //onLongPress: () => (print("OnlongPress")),
                    child: Text("u"),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    style: buttonStyle2,
                    onPressed: () => (print("onPressed")),
                    //onLongPress: () => (print("OnlongPress")),
                    child: Text("sin"),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    style: buttonStyle2,
                    onPressed: () => (print("onPressed")),
                    // onLongPress: () => (print("OnlongPress")),
                    child: Text("deg"),
                  ),
                  SizedBox(width: 3),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 3),
                  ElevatedButton(
                    style: buttonStyleac,
                    onPressed: () {
                      setState(() {
                        _output = ' ';
                        _operator = ' ';
                        input1 = 0;
                        input2 = 0;
                      });
                    },
                    // onLongPress: () => (print("OnlongPress")),
                    child: Text("AC"),
                  ),
                  SizedBox(width: 5),

                  ElevatedButton(
                    style: buttonStyleac,
                    onPressed: () => print("onPressed"),
                    //onLongPress: () => print("OnlongPress"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons
                            .cancel_presentation), // Replace 'your_icon' with the icon you want
                      ],
                    ),
                  ),

                  // ElevatedButton.icon(
                  //   style: buttonStyleac,
                  //   onPressed: () => print("onPressed"),
                  //   //onLongPress: () => print("OnlongPress"),
                  //   icon: Icon(Icons
                  //       .cancel_presentation), // Replace 'your_icon' with the icon you want
                  //   label: Text(''), // Empty string to remove the label
                  // ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    style: buttonStyledm,

                    onPressed: () => handleOperatorPress('/'),
                    ////onLongPress: () => (print("OnlongPress")),
                    child: Text("/"),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    style: buttonStyledm,
                    onPressed: () => handleOperatorPress('*'),
                    //onLongPress: () => (print("OnlongPress")),
                    child: Text("*"),
                  ),
                  SizedBox(width: 3),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(width: 20),
                      Row(
                        children: [
                          SizedBox(width: 8),
                          ElevatedButton(
                            style: buttonStyle,
                            onPressed: () => handleNumberPress(7),
                            //onLongPress: () => (print("OnlongPress")),
                            child: Text("7"),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton(
                            style: buttonStyle,
                            onPressed: () => handleNumberPress(8),
                            //// onLongPress: () => (print("OnlongPress")),
                            child: Text("8"),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton(
                            style: buttonStyle,
                            onPressed: () => handleNumberPress(9),
                            // onLongPress: () => (print("OnlongPress")),
                            child: Text("9"),
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 8),
                          ElevatedButton(
                            style: buttonStyle,
                            onPressed: () => handleNumberPress(4),
                            //onLongPress: () => (print("OnlongPress")),
                            child: Text("4"),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton(
                            style: buttonStyle,
                            onPressed: () => handleNumberPress(5),
                            //// onLongPress: () => (print("OnlongPress")),
                            child: Text("5"),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton(
                            style: buttonStyle,
                            onPressed: () => handleNumberPress(6),
                            //onLongPress: () => (print("OnlongPress")),
                            child: Text("6"),
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          SizedBox(width: 8),
                          ElevatedButton(
                            style: buttonStyle,
                            onPressed: () => handleNumberPress(1),
                            //// onLongPress: () => (print("OnlongPress")),
                            child: Text("1"),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton(
                            style: buttonStyle,
                            onPressed: () => handleNumberPress(2),
                            //onLongPress: () => (print("OnlongPress")),
                            child: Text("2"),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton(
                            style: buttonStyle,
                            onPressed: () => handleNumberPress(3),
                            //onLongPress: () => (print("OnlongPress")),
                            child: Text("3"),
                          ),
                          SizedBox(width: 8),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          ElevatedButton(
                            style: buttonStyle4,
                            onPressed: () => handleNumberPress(0),
                            //onLongPress: () => (print("OnlongPress")),
                            child: Text("0"),
                          ),
                          SizedBox(width: 8, height: 8),
                          ElevatedButton(
                            style: buttonStyle,
                            onPressed: () => (print("onPressed")),
                            //onLongPress: () => (print("OnlongPress")),
                            child: Text("."),
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                    ],
                  ),
                  //SizedBox(width: 6),
                  Column(children: [
                    Row(
                      children: [
                        ElevatedButton(
                          style: buttonStyledm,
                          onPressed: () => handleOperatorPress('-'),
                          //onLongPress: () => (print("OnlongPress")),
                          child: Text("-"),
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        ElevatedButton(
                          style: buttonStyle3,
                          onPressed: () => handleOperatorPress('+'),
                          // onLongPress: () => (print("OnlongPress")),
                          child: Text("+"),
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        ElevatedButton(
                          style: buttonStyle3,
                          onPressed: () {
                            print('input1: $input1');
                            print('input2: $input2');
                            double tempOutput = 0;
                            if (_operator == '+') {
                              tempOutput = (input1 + input2).toDouble();
                            } else if (_operator == '-') {
                              tempOutput = (input1 - input2).toDouble();
                            } else if (_operator == '/') {
                              tempOutput = input1 / input2;
                            } else if (_operator == '*') {
                              tempOutput = (input1 * input2).toDouble();
                            }

                            setState(() {
                              _output = tempOutput.toString();
                            });
                          },
                          //onLongPress: () => (print("OnlongPress")),
                          child: Text("="),
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                  ])
                ],
              ),
              SizedBox(width: 8),
              SizedBox(height: 1),

              ////////////////////////////////////
            ],
          ),
        ),
      ),
    );
  }

  void handleNumberPress(int input) {
    print('input: $input');
    setState(() {
      _output += input.toString();
      if (_operator.isEmpty) {
        // input1
        input1 = (input1 * 10) + input;
      } else {
        // input2
        input2 = (input2 * 10) + input;
      }
    });
  }

  void handleOperatorPress(String oprtr) {
    setState(() {
      _operator = oprtr;
      _output += oprtr;
      print('output: $_output');
    });
  }

  ButtonStyle buttonStyle = ButtonStyle(
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
    backgroundColor: MaterialStateProperty.all(
      Color.fromARGB(255, 82, 82, 81),
    ),
    textStyle: MaterialStateProperty.all(
      TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(
            255, 255, 254, 254), // White text color for better contrast
        shadows: [
          Shadow(
            color:
                Colors.black.withOpacity(0.5), // Shadow color for glossy effect
            blurRadius: 2,
            offset: Offset(1, 1),
          ),
        ],
      ),
    ),
    foregroundColor: MaterialStateProperty.all(Colors.blue),
    padding: MaterialStateProperty.all(
      EdgeInsets.symmetric(horizontal: 10, vertical: 19),
    ),
  );

  // -/ *
  ButtonStyle buttonStyledm = ButtonStyle(
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
    backgroundColor: MaterialStateProperty.all(
      Color.fromARGB(255, 93, 108, 175),
    ),
    textStyle: MaterialStateProperty.all(
      TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(
            255, 255, 254, 254), // White text color for better contrast
        shadows: [
          Shadow(
            color:
                Colors.black.withOpacity(0.5), // Shadow color for glossy effect
            blurRadius: 2,
            offset: Offset(1, 1),
          ),
        ],
      ),
    ),
    foregroundColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 247, 248, 249)),
    padding: MaterialStateProperty.all(
      EdgeInsets.symmetric(horizontal: 10, vertical: 19),
    ),
  );

  // ac
  ButtonStyle buttonStyleac = ButtonStyle(
    shape: MaterialStateProperty.all(const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
    )),
    backgroundColor:
        MaterialStateProperty.all(Color.fromARGB(255, 114, 114, 113)),
    textStyle: MaterialStateProperty.all(const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    )),
    foregroundColor:
        MaterialStateProperty.all(Colors.white), // Set text color to white
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 10, vertical: 19)),
  );

  ButtonStyle buttonStyle2 = ButtonStyle(
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
    ),
    backgroundColor: MaterialStateProperty.all(
      Color.fromARGB(255, 82, 82, 81),
    ),
    textStyle: MaterialStateProperty.all(
      TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(
            255, 255, 254, 254), // White text color for better contrast
        shadows: [
          Shadow(
            color:
                Colors.black.withOpacity(0.5), // Shadow color for glossy effect
            blurRadius: 2,
            offset: Offset(1, 1),
          ),
        ],
      ),
    ),
    foregroundColor:
        MaterialStateProperty.all(Color.fromARGB(255, 85, 146, 196)),
    padding: MaterialStateProperty.all(
      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    ),
  );

// + =
  ButtonStyle buttonStyle3 = ButtonStyle(
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
    backgroundColor: MaterialStateProperty.all(
      Color.fromARGB(255, 99, 91, 221), // Blue background color
    ),
    textStyle: MaterialStateProperty.all(
      TextStyle(
        fontSize: 8,
        fontWeight: FontWeight.bold,
        color: Colors.white, // White text color
      ),
    ),
    foregroundColor: MaterialStateProperty.all(Colors.white),
    padding: MaterialStateProperty.all(
      EdgeInsets.symmetric(vertical: 38),
    ),
  );

  ButtonStyle buttonStyle4 = ButtonStyle(
      shape: MaterialStateProperty.all(const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)))),
      backgroundColor: MaterialStateProperty.all(
        Color.fromARGB(255, 82, 82, 81),
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(
              255, 255, 254, 254), // White text color for better contrast
          shadows: [
            Shadow(
              color: Colors.black
                  .withOpacity(0.5), // Shadow color for glossy effect
              blurRadius: 2,
              offset: Offset(1, 1),
            ),
          ],
        ),
      ),
      foregroundColor:
          MaterialStateProperty.all(Color.fromARGB(255, 85, 146, 196)),
      padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 55, vertical: 19)));
}
