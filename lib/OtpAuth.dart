import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OtpAuth extends StatefulWidget {
  @override
  _OtpAuthState createState() => new _OtpAuthState();
}

class _OtpAuthState extends State<OtpAuth> {
  String phoneNo;
  String smsCode;
  String verificationId;

  Future<void> verifyPhone() async {
    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
      this.verificationId = verId;
    };

    final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]) {
      this.verificationId = verId;
      smsCodeDialog(context).then((value) {
        print('Signed in');
      });
    };

    final PhoneVerificationCompleted verifiedSuccess = (AuthCredential user) {
      print('verified');
    };

    final PhoneVerificationFailed veriFailed = (AuthException exception) {
      print('${exception.message}');
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: this.phoneNo,
        codeAutoRetrievalTimeout: autoRetrieve,
        codeSent: smsCodeSent,
        timeout: const Duration(seconds: 5),
        verificationCompleted: verifiedSuccess,
        verificationFailed: veriFailed);
  }

  Future<bool> smsCodeDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: Text('Enter sms Code'),
            content: TextField(
              onChanged: (value) {
                this.smsCode = value;
              },
            ),
            contentPadding: EdgeInsets.all(10.0),
            actions: <Widget>[
              new FlatButton(
                child: Text('Done'),
                onPressed: () {
                  FirebaseAuth.instance.currentUser().then((user) {
                    if (user != null) {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushReplacementNamed('/guestsign');
                    } else {
                      Navigator.of(context).pop();
                      signIn();
                    }
                  });
                },
              )
            ],
          );
        });
  }

  signIn() {
    final AuthCredential credential = PhoneAuthProvider.getCredential(
      verificationId: verificationId,
      smsCode: smsCode,
    );
    FirebaseAuth.instance.signInWithCredential(credential).then((user) {
      Navigator.of(context).pushReplacementNamed('/guestsign');
    }).catchError((e) {
      print(e);
    });
  }

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
                onChanged: (value) {
                  this.phoneNo = value;
                },
                style: TextStyle(
                    color: Colors.black, decoration: TextDecoration.none),
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
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              onPressed: verifyPhone,
              child: Text(
                'Send OTP',
                style: TextStyle(fontSize: 21),
              ),
              textColor: Colors.white,
              elevation: 7.0,
              color: Colors.black,
              shape: StadiumBorder(),
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
