import 'package:flutter/material.dart';
import 'package:flutter_application_1/Assignment4.dart';
import 'package:flutter_application_1/Calculator.dart';
import 'package:flutter_application_1/MainScreen.dart';
import 'package:flutter_application_1/RegistrationPage.dart';
import 'package:flutter_application_1/SecondScreen.dart';
import 'package:flutter_application_1/SimpleCalculator.dart';
import 'package:flutter_application_1/assignment5.1.dart';
import 'package:flutter_application_1/assignment5.2.dart';
import 'package:flutter_application_1/assignment5.3.dart';
import 'package:flutter_application_1/counterScreen.dart';
import 'package:flutter_application_1/listView.dart';
//import 'package:flutter_application_1/login.dart';
//import 'package:flutter_application_1/assignment2.dart';
import 'package:flutter_application_1/login2.dart';

import 'package:flutter_application_1/signup.dart';
import 'package:flutter_application_1/ImagesAndButton.dart';
//import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/settings.dart';
import 'package:flutter_application_1/thiredScreen.dart';
import 'package:localstorage/localstorage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocalStorage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        //home: const SimpleCalculator(),
        //home: const Calculator(),
        //home: CalculatorScreen(),
        //home: Assignment4(),
        // home: const LoginScreen(),
        //home: const assignment2(),
        //home: ImagesAndButton(),
        //home: const LoginScreen2(),
        //home: const assignment5_2(),
        initialRoute: '/ThirdScreen',
        routes: {
          '/login': (BuildContext context) => const LoginScreen2(),
          '/Signup': (BuildContext context) => const SignupScreen(),
          '/Images': (BuildContext context) => const ImagesAndButton(),
          '/Home': (BuildContext context) =>
              const MainScreen(username: ' ', email: ' '),
          '/Search': (BuildContext context) => const SearchScreen(),
          '/Settings': (BuildContext context) => const SettingScreen(),
          '/ListView': (BuildContext context) => const ListView1(),
          '/assignment5_3': (BuildContext context) => const assignment5_3(),
          '/assignment5_2': (BuildContext context) => const assignment5_2(),
          '/assignment5_1': (BuildContext context) => const assignment5_1(),
          '/Counter': (BuildContext context) => CounterScreen(),
          '/Registration': (BuildContext context) => RegistrationPage(),
          '/SecondScreen': (BuildContext context) => SecondScreen(),
          '/ThirdScreen': (BuildContext context) => ThirdScreen(),
        });
  }
}
