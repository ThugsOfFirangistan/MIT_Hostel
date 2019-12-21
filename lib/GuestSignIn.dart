import "package:flutter/material.dart";
import 'package:mit_hostel/Dashboard.dart';
import 'package:mit_hostel/MitButton.dart';

class GuestSignIn extends StatelessWidget {
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
                    hintText: 'Access Key',
                    hintStyle: TextStyle(color: Colors.black)),
              ),
            ),
            SizedBox(height: 15),
            MitButton(
              buttonColor: Colors.black,
              border: null,
              buttonText: 'Login',
              onTap: Dashboard(),
              width: MediaQuery.of(context).size.width / 2.3,
              textColor: Colors.white,
            ),
            SizedBox(
              height: 0.3 * MediaQuery.of(context).size.height,
            ),
            Text(
              "Guest Login",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
