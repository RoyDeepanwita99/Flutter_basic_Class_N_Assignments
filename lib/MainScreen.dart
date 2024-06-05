import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/settings.dart';
//import 'package:flutter_application_1/Common/NavigationBar.dart';

class MainScreen extends StatefulWidget {
  final String username;
  final String email;
  const MainScreen({super.key, required this.username, required this.email});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  late String username;
  late String email;
  late List<Widget> screens = [];

  @override
  void initState() {
    super.initState();
    username = widget.username;
    email = widget.email;

    screens = [
      HomeScreen(username: username),
      const SearchScreen(),
      const SettingScreen(),
    ];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedFontSize: 20,
        selectedItemColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 211, 199, 211),
        onTap: (value) {
          print('selected value: $value');

          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: widget.username),
          //DecoratedBox(decoration: Border.all(8)),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
