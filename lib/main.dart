import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninja ID Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NinjaCard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0, //remove shadow of App bar
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 40.0, right: 30.0, bottom: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/Picture1.jpg"),
                  radius: 50.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey,
              ),
              Text(
                  "Name",
                style: TextStyle(
                  wordSpacing: 3.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Malik sb",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Current Ninja Level",
                style: TextStyle(
                  wordSpacing: 3.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "8",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    size: 20.0,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "malik@gmail.com",
                    style: TextStyle(
                      wordSpacing: 3.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

    );

  }
}
