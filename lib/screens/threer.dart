import 'package:flutter/material.dart';

class ThreeR extends StatefulWidget {
  const ThreeR({Key? key}) : super(key: key);

  @override
  _ThreeRState createState() => _ThreeRState();
}

class _ThreeRState extends State<ThreeR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Three R"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Please confirm',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
          ]),
    );
  }
}
