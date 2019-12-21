import 'package:flutter/material.dart';
import 'package:mit_hostel/Dashboard.dart';
import 'package:mit_hostel/MitButton.dart';

class BookRoom extends StatefulWidget {
  @override
  _BookRoomState createState() => _BookRoomState();
}

class _BookRoomState extends State<BookRoom> {
  String defacValue = 'Room Type';
  String defocValue = 'Preferred Occupancy';
  String virtualDiv = '-----------------------';
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
                padding: EdgeInsets.all(25),
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
                  items: <String>[
                    'Preferred Occupancy',
                    virtualDiv,
                    'Single',
                    'Double'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25),
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
                  items: <String>['Room Type', virtualDiv, 'AC', 'Non-AC']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Payment Estimate",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Container(
                          width: 0.7 * MediaQuery.of(context).size.width,
                          child: Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Hostel Fee", style: TextStyle(fontSize: 20),),
                                  Text("Refundable Deposit", style: TextStyle(fontSize: 20)),
                                  Text("Total", style: TextStyle(fontSize: 20))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Container(width: 80,)
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text("Here"),
                                  Text("Here"),
                                  Text("Here")
                                ],
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
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
