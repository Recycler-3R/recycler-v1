import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  @override
  _SecondscreenState createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/2ndpoint.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 300),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Text(
                    'Hi!',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: Text(
                  'My name is',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Times New Roman',
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your name',
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
