import "package:flutter/material.dart";
import 'package:mit_hostel/Dashboard.dart';
import 'package:mit_hostel/GuestSignUp.dart';
import 'package:mit_hostel/MitButton.dart';

class Otp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          children: <Widget>[
            Container(
              height: 0.4 * MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/sangeet-kala.jpg",
                fit: BoxFit.fitHeight,
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              elevation: 5,
              color: Colors.white,
              child: TextField(
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.none),
                showCursor: false,
                decoration: new InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    border: InputBorder.none,
                    hintText: 'Mobile Number',
                    hintStyle: TextStyle(color: Colors.black)),
              ),
            ),
            Spacer(),
            MitButton(
              buttonColor: Colors.black,
              border: null,
              buttonText: 'Send OTP',
              onTap: GuestSignUp(),
              width: MediaQuery.of(context).size.width / 2.3,
              textColor: Colors.white,
            ),
            SizedBox(
              height: 0.05 * MediaQuery.of(context).size.height,
            ),
            Text(
              "OTP",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
