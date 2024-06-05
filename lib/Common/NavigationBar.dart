import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedFontSize: 20,
      selectedItemColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 211, 199, 211),
      onTap: (value) {
        print('selected value: $value');
        if (value == 0) {
          //navigate to home
          Navigator.of(context).pushReplacementNamed("/Home");
        } else if (value == 1) {
          //navigate to search
          Navigator.of(context).pushReplacementNamed("/Search");
        } else if (value == 2) {
          //navigate to settings
          Navigator.of(context).pushReplacementNamed("/Settings");
        }

        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        //DecoratedBox(decoration: Border.all(8)),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
    );
  }
}
