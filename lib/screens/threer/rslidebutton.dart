import 'package:flutter/material.dart';
import 'package:recycler/screens/threer/fail.dart';

class RSlideButton extends StatefulWidget {
  final String buttonName;
  RSlideButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  @override
  _RSlideButtonState createState() => _RSlideButtonState();
}

class _RSlideButtonState extends State<RSlideButton> {
  double _width = 220;
  double _height = 90;
  Color _color = Color(0xFF3DD598);
  Color _vcolor = Color(0xFF9378FF);
  double _swipe = 0;
  bool _isnotRed = true;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(40);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Stack(alignment: Alignment.centerRight, children: [
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
            Padding(
              padding: widget.buttonName == 'euse'
                  ? EdgeInsets.only(right: 40.0)
                  : EdgeInsets.only(right: 20.0),
              child: Text(
                widget.buttonName,
                style: TextStyle(
                    fontFamily: 'AutourOne', fontSize: 30, color: Colors.black),
              ),
            ),
          ]),
          AnimatedPositioned(
            duration: Duration(seconds: 1),
            left: _swipe,
            curve: Curves.fastLinearToSlowEaseIn,
            child: GestureDetector(
              onHorizontalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  _color = _isnotRed ? Color(0xFF3DD598) : Colors.redAccent;
                  _vcolor = _isnotRed ? Color(0xFF9378FF) : Colors.redAccent;
                  _swipe = _isnotRed ? 0 : 130;
                  _isnotRed = _isnotRed ? false : true;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FailR()));
                });
              },
              child: AnimatedContainer(
                width: 84,
                height: 86,
                duration: Duration(seconds: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: _vcolor,
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(32.0, 21.0, 0, 0),
                  child: Text(
                    'R',
                    style: TextStyle(
                        fontFamily: 'AutourOne',
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
