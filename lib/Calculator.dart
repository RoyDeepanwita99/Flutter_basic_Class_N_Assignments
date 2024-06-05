import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = '';
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
      body: Column(children: [
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
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ],
          ),
        ),

        //SizedBox(height: 166),
        //Text("12.000"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 3),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)))),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 229, 224, 209)),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 50, vertical: 18))),
              onPressed: () => (print("onPressed")),
              //onLongPress: () => (print("OnlongPress")),
              child: Text("e"),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)))),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 229, 224, 209)),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 50, vertical: 18))),
              onPressed: () => (print("onPressed")),
              //onLongPress: () => (print("OnlongPress")),
              child: Text("u"),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)))),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 229, 224, 209)),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 45, vertical: 18))),
              onPressed: () => (print("onPressed")),
              //onLongPress: () => (print("OnlongPress")),
              child: Text("sin"),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)))),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 229, 224, 209)),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 45, vertical: 18))),
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
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(218, 242, 243, 244)),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 45, vertical: 20))),
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
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 229, 224, 209)),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 50, vertical: 20))),
              onPressed: () => (print("onPressed")),
              //onLongPress: () => (print("OnlongPress")),
              child: Text("x"),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 202, 191, 237)),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 50, vertical: 20))),
              onPressed: () => handleOperatorPress('/'),
              ////onLongPress: () => (print("OnlongPress")),
              child: Text("/"),
            ),
            SizedBox(width: 5),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 202, 191, 237)),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 50, vertical: 20))),
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
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 229, 224, 209)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20))),
                      onPressed: () => handleNumberPress(7),
                      //onLongPress: () => (print("OnlongPress")),
                      child: Text("7"),
                    ),
                    SizedBox(width: 5),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 229, 224, 209)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20))),
                      onPressed: () => handleNumberPress(8),
                      //// onLongPress: () => (print("OnlongPress")),
                      child: Text("8"),
                    ),
                    SizedBox(width: 5),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 229, 224, 209)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20))),
                      onPressed: () => handleNumberPress(9),
                      // onLongPress: () => (print("OnlongPress")),
                      child: Text("9"),
                    ),
                    //SizedBox(width: 5),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 229, 224, 209)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20))),
                      onPressed: () => handleNumberPress(4),
                      //onLongPress: () => (print("OnlongPress")),
                      child: Text("4"),
                    ),
                    SizedBox(width: 5),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 229, 224, 209)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20))),
                      onPressed: () => handleNumberPress(5),
                      //// onLongPress: () => (print("OnlongPress")),
                      child: Text("5"),
                    ),
                    SizedBox(width: 5),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 229, 224, 209)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20))),
                      onPressed: () => handleNumberPress(6),
                      //onLongPress: () => (print("OnlongPress")),
                      child: Text("6"),
                    ),
                    SizedBox(width: 5),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 229, 224, 209)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20))),
                      onPressed: () => handleNumberPress(1),
                      //// onLongPress: () => (print("OnlongPress")),
                      child: Text("1"),
                    ),
                    SizedBox(width: 5),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 229, 224, 209)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20))),
                      onPressed: () => handleNumberPress(2),
                      //onLongPress: () => (print("OnlongPress")),
                      child: Text("2"),
                    ),
                    SizedBox(width: 5),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 229, 224, 209)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20))),
                      onPressed: () => handleNumberPress(3),
                      //onLongPress: () => (print("OnlongPress")),
                      child: Text("3"),
                    ),
                    SizedBox(width: 5),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 229, 224, 209)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 110, vertical: 20))),
                      onPressed: () => handleNumberPress(0),
                      //onLongPress: () => (print("OnlongPress")),
                      child: Text("0"),
                    ),
                    SizedBox(width: 5),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 229, 224, 209)),
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20))),
                      onPressed: () => (print("onPressed")),
                      //onLongPress: () => (print("OnlongPress")),
                      child: Text("."),
                    ),
                    SizedBox(width: 5),
                  ],
                ),
              ],
            ),
            //SizedBox(width: 2),
            Column(children: [
              Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 202, 191, 237)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 50, vertical: 20))),
                    onPressed: () => handleOperatorPress('-'),
                    //onLongPress: () => (print("OnlongPress")),
                    child: Text("-"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 202, 191, 237)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 50, vertical: 35))),
                    onPressed: () => handleOperatorPress('+'),
                    // onLongPress: () => (print("OnlongPress")),
                    child: Text("+"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5)))),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 202, 191, 237)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 50, vertical: 35))),
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
                ],
              ),
            ])
          ],
        ),
      ]),
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
}
