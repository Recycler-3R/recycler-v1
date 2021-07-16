import 'package:flutter/material.dart';
import 'package:recycler/screens/threer/rslidebutton.dart';

void main() => runApp(Sandbox());

class Sandbox extends StatefulWidget {
  @override
  _SandboxState createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFFFFFFF)),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Center(
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
                RSlideButton(buttonName: 'educe'),
                SizedBox(
                  height: 15,
                ),
                RSlideButton(buttonName: 'euse'),
                SizedBox(
                  height: 15,
                ),
                RSlideButton(buttonName: 'ecycle'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedContainer(
                      // Use the properties stored in the State class.
                      width: _width,
                      height: _height,
                      decoration: BoxDecoration(
                        color: _color2,
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
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _color2 = _isnotRed
                                    ? Color(0xFF3DD598)
                                    : Colors.redAccent;
                                _vcolor2 = _isnotRed
                                    ? Color(0xFF9378FF)
                                    : Colors.redAccent;
                                _isnotRed = _isnotRed ? false : true;
                              });
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 84,
                                  height: 86,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: _vcolor2,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(32.0, 21.0, 0, 0),
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
*/
// Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     AnimatedContainer(
//                       // Use the properties stored in the State class.
//                       width: _width,
//                       height: _height,
//                       decoration: BoxDecoration(
//                         color: _color1,
//                         borderRadius: _borderRadius,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.shade200,
//                             spreadRadius: 1,
//                             blurRadius: 4,
//                             offset: Offset(0, 2), // changes position of shadow
//                           ),
//                         ],
//                       ),
//                       // Define how long the animation should take.
//                       duration: Duration(seconds: 1),
//                       // Provide an optional curve to make the animation feel smoother.
//                       curve: Curves.fastOutSlowIn,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(left: 80.0),
//                           child: GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 _color1 = _isnotRed
//                                     ? Color(0xFF3DD598)
//                                     : Colors.redAccent;
//                                 _vcolor1 = _isnotRed
//                                     ? Color(0xFF9378FF)
//                                     : Colors.redAccent;
//                                 _isnotRed = _isnotRed ? false : true;
//                               });
//                             },
//                             child: Stack(
//                               children: [
//                                 Container(
//                                   width: 84,
//                                   height: 86,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(50),
//                                     color: _vcolor1,
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding:
//                                       EdgeInsets.fromLTRB(32.0, 21.0, 0, 0),
//                                   child: Text(
//                                     'R',
//                                     style: TextStyle(
//                                         fontFamily: 'AutourOne',
//                                         fontSize: 30,
//                                         color: Colors.white),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(5.0),
//                           child: Text(
//                             'euse',
//                             style: TextStyle(
//                                 fontFamily: 'AutourOne',
//                                 fontSize: 30,
//                                 color: Colors.black),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),