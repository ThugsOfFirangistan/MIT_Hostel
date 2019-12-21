import 'package:flutter/material.dart';

class ReqSub extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
              child: Column(
        children: <Widget>[
          SizedBox(
            height: 0.4 * MediaQuery.of(context).size.height,
          ),
          Card(
            elevation: 5,
            child: Container(
              width: 0.7 * MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: Text(
              "Your Request has been submitted successfully, Activation text will be sent to reg. mobile no. post verification",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            )
          )
        ],
      ))),
    );
  }
}
