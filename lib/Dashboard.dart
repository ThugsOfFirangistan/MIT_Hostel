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
          title: Text("MIT Hostel"),
          backgroundColor: Colors.black,
        ),
        drawer: drawerHome,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 0.9 * MediaQuery.of(context).size.width,
                      height: 0.4 * MediaQuery.of(context).size.height,
                      child: Column(
                        children: <Widget>[
                          Text("Today's Menu", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                  ),
              Spacer(),
              Card(
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "Quick Services",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        height: 150.0,
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Card(
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                Icons.local_laundry_service,
                                size: 80,
                              ),
                              Text("Laundry")
                                ],
                              )
                            ),
                            Card(
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                Icons.data_usage,
                                size: 80,
                              ),
                              Text("Buy Data")
                                ],
                              )
                            ),
                            Card(
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                Icons.build,
                                size: 80,
                              ),
                              Text("Plumbing")
                                ],
                              )
                            ),
                            Card(
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                Icons.highlight,
                                size: 80,
                              ),
                              Text("Electicity")
                                ],
                              )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
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
