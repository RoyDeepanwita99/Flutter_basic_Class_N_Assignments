import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_application_1/Common/NavigationBar.dart';
import 'package:localstorage/localstorage.dart';

class HomeScreen extends StatefulWidget {
  final String? username;
  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;
  String name = '';
  late Future<List<User>> futureUsers;
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    futureUsers = getUsersFromDB();
  }

  Future<String> getNameFromDatabase() async {
    await Future.delayed(const Duration(seconds: 5));
    return 'BU CSE';
  }

  Future<List<User>> getUsersFromDB() async {
    try {
      Uri uri = Uri.parse('https://jsonplaceholder.typicode.com/users');
      http.Response response = await http.get(uri);
      // print('${uri.host}');
      //print('response body: ${response.body}');
      List<dynamic> decoded = json.decode(response.body);
      List<User> tempUsers = [];
      decoded.forEach(
        (element) {
          User tempUser = User.fromJson(element);
          tempUsers.add(tempUser);
        },
      );
      inspect(decoded);
      //print(decoded);// string akare print kore

      return tempUsers;
    } catch (e) {
      print('getting user error: ${e.toString()}');
      throw "Something went wrong!!!";
      //return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Color.fromARGB(255, 211, 199, 211),
        ),

        /////////////////////////////////////////////////////////////////////////////////////////////
        floatingActionButton: FloatingActionButton(onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("access token"),
                  content: Container(
                    child: Text(localStorage.getItem('access-token') ?? ''),
                  ),
                );
              });
        }),

        ///////////////////////////////////////////////////////////////////////////////////////
        body: isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                ),
              )
            : FutureBuilder(
                future: futureUsers,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      List<User> tempUsers = snapshot.data!;
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: tempUsers.length,
                        itemBuilder: (context, index) {
                          User user = tempUsers[index];
                          return Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(255, 211, 199, 211),
                                      width: 1),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('User Id: ${user.id}'),
                                  Text('Name: ${user.username}'),
                                  Text('Email: ${user.email.toLowerCase()}'),
                                  Text(
                                      'Address: Street-${user.address.street} City-${user.address.city} Zip Code-${user.address.zipcode}'),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }
                    if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    }
                  }
                  return Text(snapshot.data!.length.toString());
                },
              ));
  }
}
// SingleChildScrollView(
//         physics: const ScrollPhysics(),
//         child: Column(
//           children: [
//             // ElevatedButton(
//             //     onPressed: () async {
//             //       setState(() {
//             //         isLoading = true;
//             //       });
//             //       await getUsersFromDB();
//             //       // setState(() {
//             //       //   name = '';
//             //       // });
//             //       // String _name = await getNameFromDatabase();
//             //       // setState(() {
//             //       //   name = _name;
//             //       // });
//             //       // print('name: $_name');
//             //     },
//             //     child: const Text('Get Name')),
//             // const SizedBox(
//             //   height: 30,
//             // ),
//             // if (isLoading)
//             //   const CircularProgressIndicator(
//             //     strokeWidth: 5,
//             //   ),
            
//           ],
//         ),
//       )

///////////////////////////////////////////for showing 1 data
// FutureBuilder(
//   future: futureUsers,
//   builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//       return const Center(
//         child: CircularProgressIndicator(),
//       );
//     } else if (snapshot.connectionState == ConnectionState.done) {
//       if (snapshot.hasData) {
//         List<User> tempUsers = snapshot.data!;
//         if (tempUsers.isNotEmpty) {
//           User user = tempUsers.first; // Get the first user
//           return Container(
//             margin: const EdgeInsets.symmetric(vertical: 10),
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//             decoration: BoxDecoration(
//               border: Border.all(color: Color.fromARGB(255, 211, 199, 211), width: 1),
//               borderRadius: const BorderRadius.all(Radius.circular(20)),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('User Id: ${user.id}'),
//                 Text('Name: ${user.username}'),
//                 Text('Email: ${user.email.toLowerCase()}'),
//                 Text('Address: Street-${user.address.street} City-${user.address.city} Zip Code-${user.address.zipcode}'),
//               ],
//             ),
//           );
//         } else {
//           return Text('No users found');
//         }
//       }
//       if (snapshot.hasError) {
//         return Text(snapshot.error.toString());
//       }
//     }
//     return Text(snapshot.data!.length.toString());
//   },
// );
