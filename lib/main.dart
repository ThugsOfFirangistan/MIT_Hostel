import 'package:flutter/material.dart';
import 'package:mit_hostel/BookRoom.dart';
import 'package:mit_hostel/GuestSignIn.dart';
import 'package:mit_hostel/GuestSignUp.dart';
import 'package:mit_hostel/Payment.dart';
import 'package:mit_hostel/OnBoarding.dart';
import 'package:mit_hostel/UserSignIn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoarding(),
      routes: {
        '/signin': (context) => UserSignIn(),
        '/guest': (context) => GuestSignIn(),
        '/bookroom': (context) => BookRoom(),
        '/payment': (context) => Payment(),
        '/guestsign': (context) => GuestSignUp()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
