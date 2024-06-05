import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListView1 extends StatefulWidget {
  const ListView1({super.key});

  @override
  State<ListView1> createState() => _ListViewState();
}

class _ListViewState extends State<ListView1> {
  @override
  static List<String> listViewItem = [
    'item 1',
    'item 1',
    'item 1',
    'item 1',
    'item 1',
    'item 1',
    'item 1',
    'item 1',
    'item 1',
    'item 1',
    'item 1',
    'item 1',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 211, 199, 211),
        title: Text("List View & Grid View"),
      ),
      //body: listViewBuilder,
      //body: listView,
      body: gridViewBuilder,
    );
  }
  //Widget listView=

  Widget gridViewBuilder = GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      //crossAxisCount: 1, // 1 kore dile kist er moto kaj korbe

      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
    ),
    itemCount: listViewItem.length,
    itemBuilder: (context, index) {
      return Column(
        children: [
          Text(listViewItem[index]),
          Image.network('https://picsum.photos/200/100'),
          // ElevatedButton(onPressed: (){
          //   hanadleLaunchURL(ListViewItems[index])
          // }, child: Text("click Here")),
        ],
      );
    },
  );

  //   Future<void> hanadleLaunchURL(Uri url) async {
  //   if (!await launchUrl(
  //     url,
  //     mode: LaunchMode.externalApplication,
  //   )) {
  //     throw Exception('Could not launch $url');
  //   }
  // }

  Widget listViewBuilder = ListView.builder(
    itemCount: listViewItem.length,
    itemBuilder: (context, index) {
      return Container(
        child: Image.network('https://picsum.photos/200/100'),
      );
    },
  );

  //ListView k listView variable a rakha hoyese
  Widget listView = ListView(padding: EdgeInsets.all(10), children: [
    Container(
      color: Colors.amber,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Text("item 1"),
    ),
    Container(
      color: Color.fromARGB(255, 225, 210, 165),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Text("item 1"),
    ),
    Container(
      color: Colors.amber,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Text("item 1"),
    ),
    Container(
      color: Color.fromARGB(255, 225, 210, 165),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      child: Text("item 1"),
    ),
  ]);
}
