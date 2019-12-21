import "package:flutter/material.dart";
import 'package:mit_hostel/GuestSignIn.dart';
import 'package:mit_hostel/MitButton.dart';
import 'package:mit_hostel/UserSignIn.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Spacer(
                    flex: 10,
                  ),
                  Text(
                    "MIT Hostel",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 31,
                    ),
                  ),
                  Spacer(),
                  MitButton(
                    buttonColor: Color(0xff48808d),
                    border: null,
                    buttonText: "Sign In",
                    onTap: UserSignIn(),
                    width: MediaQuery.of(context).size.width / 2.3,
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  MitButton(
                    buttonColor: Colors.transparent,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                    buttonText: 'Guest',
                    onTap: GuestSignIn(),
                    width: MediaQuery.of(context).size.width / 2.3,
                  ),
                  Spacer(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
