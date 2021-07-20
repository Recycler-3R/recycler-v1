import 'package:flutter/material.dart';
import 'package:recycler/screens/threer/fail.dart';
import 'package:recycler/screens/threer/success.dart';

class RSlideButton extends StatefulWidget {
  final String buttonName;
  final item;
  final bool isSuccess;
  RSlideButton({
    Key? key,
    required this.item,
    required this.buttonName,
    required this.isSuccess,
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
  bool _notChanged = true;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(40);

  Future<void> delayScreen(bool isSuccess) {
    // Imagine that this function is fetching user info from another service or database.
    return Future.delayed(const Duration(milliseconds: 700), () {
      final String resultRe = 'r' + widget.buttonName;
      isSuccess
          ? Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SuccessR(
                        finalR: resultRe,
                      )))
          : Navigator.push(context,
              MaterialPageRoute(builder: (context) => FailR(finalR: resultRe)));
    });
  }

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
                  ? EdgeInsets.only(right: 50.0)
                  : EdgeInsets.only(right: 23.0),
              child: Text(
                widget.buttonName,
                style: TextStyle(
                  fontFamily: 'AutourOne',
                  fontSize: 30,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ]),
          AnimatedPositioned(
            duration: Duration(milliseconds: 100),
            left: _swipe,
            curve: Curves.fastLinearToSlowEaseIn,
            child: GestureDetector(
              onHorizontalDragStart: (DragStartDetails details) {
                setState(() {
                  _color =
                      _notChanged ? Color(0xFF3DD598) : Colors.purpleAccent;
                  _vcolor =
                      _notChanged ? Color(0xFF9378FF) : Colors.deepPurpleAccent;
                  _swipe = _notChanged ? 0 : 130;
                  _notChanged = _notChanged ? false : true;

                  delayScreen(widget.isSuccess);
                });
              },
              child: AnimatedContainer(
                width: 84,
                height: 86,
                duration: Duration(milliseconds: 100),
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
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
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
