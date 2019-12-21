import "package:flutter/material.dart";
import 'package:mit_hostel/Dashboard.dart';
import 'package:mit_hostel/MitButton.dart';
import 'package:mit_hostel/ReqSub.dart';

class GuestSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          children: <Widget>[
            Container(
              height: 0.16 * MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/mit_home_banner3.jpg",
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              height: 0.5 * MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.all(10),
                    elevation: 5,
                    color: Colors.white,
                    child: TextField(
                      style: TextStyle(
                          color: Colors.white, decoration: TextDecoration.none),
                      showCursor: false,
                      decoration: new InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          border: InputBorder.none,
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.black)),
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
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          border: InputBorder.none,
                          hintText: 'Institute',
                          hintStyle: TextStyle(color: Colors.black)),
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
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          border: InputBorder.none,
                          hintText: 'Aadhar Number',
                          hintStyle: TextStyle(color: Colors.black)),
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
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          border: InputBorder.none,
                          hintText: 'No. of days to stay',
                          hintStyle: TextStyle(color: Colors.black)),
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
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          border: InputBorder.none,
                          hintText: 'Purpose',
                          hintStyle: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            MitButton(
              buttonColor: Colors.black,
              border: null,
              buttonText: 'Submit',
              onTap: ReqSub(),
              width: MediaQuery.of(context).size.width / 2.3,
              textColor: Colors.white,
            ),
            SizedBox(height: 80,),
            Text(
              "Guest Sign Up",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),
            ),
          ],
        ),
      ),
    );
  }
   void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to favorite'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
