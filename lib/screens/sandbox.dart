import 'package:flutter/material.dart';

void main() => runApp(Sandbox());

class Sandbox extends StatefulWidget {
  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
  double _width = 220;
  double _height = 90;
  Color _color = Color(0xFF3DD598);
  bool _isnotRed = true;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(40);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFFFFFFF)),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Three R'),
          centerTitle: true,
          backgroundColor: Color(0xFFA9C9FF),
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage("images/sampleitem.png"),
                      fit: BoxFit.fitHeight,
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color(0xFFFBC2EB),
                        Color(0xFFFFBBEC),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ]),
              ),
              SizedBox(
                height: 25,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedContainer(
                    // Use the properties stored in the State class.
                    width: _width,
                    height: _height,
                    decoration: BoxDecoration(
                      color: _color,
                      borderRadius: _borderRadius,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    // Define how long the animation should take.
                    duration: Duration(seconds: 1),
                    // Provide an optional curve to make the animation feel smoother.
                    curve: Curves.fastOutSlowIn,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 84,
                            height: 86,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xFF9378FF),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(32.0, 21.0, 0, 0),
                            child: Text(
                              'R',
                              style: TextStyle(
                                  fontFamily: 'AutourOne',
                                  fontSize: 30,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'educe',
                          style: TextStyle(
                              fontFamily: 'AutourOne',
                              fontSize: 30,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedContainer(
                    // Use the properties stored in the State class.
                    width: _width,
                    height: _height,
                    decoration: BoxDecoration(
                      color: _color,
                      borderRadius: _borderRadius,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    // Define how long the animation should take.
                    duration: Duration(seconds: 1),
                    // Provide an optional curve to make the animation feel smoother.
                    curve: Curves.fastOutSlowIn,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 80.0),
                        child: Stack(
                          children: [
                            Container(
                              width: 84,
                              height: 86,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xFF9378FF),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(32.0, 21.0, 0, 0),
                              child: Text(
                                'R',
                                style: TextStyle(
                                    fontFamily: 'AutourOne',
                                    fontSize: 30,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'euse',
                          style: TextStyle(
                              fontFamily: 'AutourOne',
                              fontSize: 30,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedContainer(
                    // Use the properties stored in the State class.
                    width: _width,
                    height: _height,
                    decoration: BoxDecoration(
                      color: _color,
                      borderRadius: _borderRadius,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    // Define how long the animation should take.
                    duration: Duration(seconds: 1),
                    // Provide an optional curve to make the animation feel smoother.
                    curve: Curves.fastOutSlowIn,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Stack(
                          children: [
                            Container(
                              width: 84,
                              height: 86,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xFF9378FF),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(32.0, 21.0, 0, 0),
                              child: Text(
                                'R',
                                style: TextStyle(
                                    fontFamily: 'AutourOne',
                                    fontSize: 30,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'ecycle',
                          style: TextStyle(
                              fontFamily: 'AutourOne',
                              fontSize: 30,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Use setState to rebuild the widget with new values.
            setState(() {
              _color = _isnotRed ? Color(0xFF3DD598) : Colors.redAccent;
              _isnotRed = _isnotRed ? false : true;
            });
          },
          child: Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
