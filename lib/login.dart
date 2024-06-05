import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(31, 217, 124, 185),
        title: const Text(
          "Sign in",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Color.fromARGB(255, 225, 94, 203),
            ),
          )
        ],
      ),
      body: const Column(
        children: [
          //Image.asset(
          //"images/login.png",
          // height:200,
          //width 200,
          //)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Username"),
              SizedBox(
                width: 15,
              ),
              Text(
                "Enter your Username",
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Password"),
              SizedBox(
                width: 10,
              ),
              Text(
                "Enter your Password",
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),

          Column(
            children: [
              Text(
                "Already have a account?",
                style: TextStyle(fontSize: 11),
              ),
            ],
          )
        ],
      ),
    );
  }
}
