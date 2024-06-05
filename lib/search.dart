import 'package:flutter/material.dart';
//import 'package:flutter_application_1/Common/NavigationBar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 211, 199, 211),
        title: Text("Search"),
      ),
      // bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
