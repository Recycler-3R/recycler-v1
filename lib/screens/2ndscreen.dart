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
              SizedBox(height: 550),
              Container(
                height: 50,
                width: 200,
                decoration: new BoxDecoration(
                    color: const Color(0xFF9378FF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.shade200,
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                        fontSize: 16, fontFamily: 'Public Sans'),
                  ),
                  child: const Text(
                    'FOLLOW US',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => {setState(() {})},
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 200,
                decoration: new BoxDecoration(
                    color: const Color(0xFF30D046),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.shade300,
                        spreadRadius: 3,
                        blurRadius: 2,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                        fontSize: 16, fontFamily: 'Public Sans'),
                  ),
                  child: const Text(
                    'PLAY NOW',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => {setState(() {})},
                ),
              ),
            ],
          )),
    );
  }
}
