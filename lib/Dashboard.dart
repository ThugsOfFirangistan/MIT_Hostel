import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Homepage"),
          backgroundColor: Colors.black,
        ),
        drawer: drawerHome,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Hello",
                  style: TextStyle(
                      color: Colors.blue[200],
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Abhi Jain",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Widget drawerHome = Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
      SizedBox(height: 50),
      Image.asset(
        "assets/logo.jpg",
        width: 150,
      ),
      ListTile(
        leading: Icon(Icons.person_outline),
        title: Text('Profile'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: Icon(Icons.check_circle_outline),
        title: Text('Services'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: Icon(Icons.help_outline),
        title: Text('Help'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),
);
