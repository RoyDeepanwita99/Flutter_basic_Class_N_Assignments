import 'package:flutter/material.dart';
//import 'package:flutter_application_1/Common/NavigationBar.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 211, 199, 211),
        title: Text("Settings"),
      ),
      //bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
