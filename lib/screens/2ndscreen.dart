import 'package:flutter/material.dart';
import 'package:recycler/screens/3rdscreen.dart';
import 'package:recycler/screens/home.dart';

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
      body: SafeArea(
        child: Container(
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
                Spacer(),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Text(
                      'Hi!',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cooper Black',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Text(
                    'My name is',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cooper Black',
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your name',
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
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
                      'Back',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()))
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 50,
                  width: 200,
                  decoration: new BoxDecoration(
                      color: const Color(0xFF30D046),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.green.shade300,
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
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Thirdscreen()))
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )),
      ),
    );
  }
}
