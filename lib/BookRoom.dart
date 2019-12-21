import 'package:flutter/material.dart';
import 'package:mit_hostel/Dashboard.dart';
import 'package:mit_hostel/MitButton.dart';

class BookRoom extends StatefulWidget {
  @override
  _BookRoomState createState() => _BookRoomState();
}

class _BookRoomState extends State<BookRoom> {
  String defacValue = 'Air Conditioning';
  String defocValue = 'Preferred Occupancy';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 0.4 * MediaQuery.of(context).size.width,
              ),
              Center(
                child: Text(
                  "Book your Room",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.all(50),
                child: DropdownButton<String>(
                  value: defocValue,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.black),
                  onChanged: (String newValue) {
                    setState(() {
                      defocValue = newValue;
                    });
                  },
                  items: <String>['Preferred Occupancy', 'Single', 'Double']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50, bottom: 120),
                child: DropdownButton<String>(
                  value: defacValue,
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.black),
                  onChanged: (String newValue) {
                    setState(() {
                      defacValue = newValue;
                    });
                  },
                  items: <String>['Air Conditioning', 'AC', 'Non-AC']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              MitButton(
                buttonColor: Colors.transparent,
                border: Border.all(
                  color: Colors.black,
                ),
                buttonText: 'Proceed to Payment',
                onTap: Dashboard(),
                width: MediaQuery.of(context).size.width / 1.3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
