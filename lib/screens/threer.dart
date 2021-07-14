import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

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
            Padding(
                padding: EdgeInsets.all(16.0),
                child: SliderButton(
                  action: () {
                    ///Do something here
                    Navigator.of(context).pop();
                  },
                  label: Text(
                    "REUSE",
                    style: TextStyle(
                        color: Colors.green.shade700,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  icon: Text(
                    "O",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 44,
                    ),
                  ),
                )),
          ]),
    );
  }
}
