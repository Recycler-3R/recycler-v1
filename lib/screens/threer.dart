import 'package:flutter/material.dart';
import 'package:recycler/screens/threer/rslidebutton.dart';
// import 'package:recycler/strings/items.dart';

class ThreeR extends StatefulWidget {
  final item;
  ThreeR({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  _ThreeRState createState() => _ThreeRState();
}

class _ThreeRState extends State<ThreeR> {
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
                Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  child: Container(
                    height: 250,
                    width: 250,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
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
                      ],
                    ),
                    child: Hero(
                      tag: widget.item,
                      child: Image.asset(
                        'images/${widget.item}.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                RSlideButton(
                  item: widget.item,
                  buttonName: 'educe',
                  isSuccess: true,
                ),
                Spacer(),
                RSlideButton(
                  item: widget.item,
                  buttonName: 'euse',
                  isSuccess: false,
                ),
                Spacer(),
                RSlideButton(
                  item: widget.item,
                  buttonName: 'ecycle',
                  isSuccess: false,
                ),
                Spacer(),
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