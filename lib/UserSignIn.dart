import "package:flutter/material.dart";
import 'package:mit_hostel/BookRoom.dart';
import 'package:mit_hostel/MitButton.dart';

class UserSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              top: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                "assets/bg.jpg",
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: (0.3) * MediaQuery.of(context).size.height),
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                    elevation: 5,
                    color: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextField(
                      style: TextStyle(
                          color: Colors.white, decoration: TextDecoration.none),
                      showCursor: false,
                      decoration: new InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          border: InputBorder.none,
                          hintText: 'User ID',
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                    elevation: 5,
                    color: Colors.black,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      showCursor: false,
                      decoration: new InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(height: 25),
                  MitButton(
                    onTap: BookRoom(),
                    width: MediaQuery.of(context).size.width / 2.3,
                    buttonColor: Colors.black,
                    buttonText: "Login",
                    border: Border.all(
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                  ),
                  Container(
                    height: 0.3 * MediaQuery.of(context).size.height,
                  ),
                  Text(
                    "Student/Faculty Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
