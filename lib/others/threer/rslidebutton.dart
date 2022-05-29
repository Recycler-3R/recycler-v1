import 'package:flutter/material.dart';
import 'package:recycler/others/threer/fail.dart';
import 'package:recycler/others/threer/success.dart';

class RSlideButton extends StatefulWidget {
  final String buttonName;
  final item;
  final String isSuccess;
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
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(40);

  Future<void> delayScreen(bool isSuccess) {
    // Imagine that this function is fetching user info from another service or database.
    return Future.delayed(const Duration(milliseconds: 500), () {
      final String resultRe = 'r' + widget.buttonName;
      isSuccess
          ? Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: Duration(milliseconds: 300),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    var curve = Curves.elasticOut;
                    //var curve2 = Curves.elasticIn;
                    late final Animation<Offset> _offsetAnimation =
                        Tween<Offset>(
                      begin: Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).animate(CurvedAnimation(
                      //  reverseCurve: curve2,
                      parent: animation,
                      curve: curve,
                    ));
                    return SlideTransition(
                      position: _offsetAnimation,
                      child: child,
                    );
                  },
                  pageBuilder: (context, animation, animationTime) {
                    return SuccessR(
                      finalR: resultRe,
                      item: widget.item,
                    );
                  }),
            )
          : Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: Duration(milliseconds: 300),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    var curve = Curves.elasticOut;
                    //var curve2 = Curves.elasticIn;
                    late final Animation<Offset> _offsetAnimation =
                        Tween<Offset>(
                      begin: Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).animate(CurvedAnimation(
                      //  reverseCurve: curve2,
                      parent: animation,
                      curve: curve,
                    ));
                    return SlideTransition(
                      position: _offsetAnimation,
                      child: child,
                    );
                  },
                  pageBuilder: (context, animation, animationTime) {
                    return FailR(
                      finalR: resultRe,
                      item: widget.item,
                    );
                  }),
            );
    });
  }

  Future<void> delayButton() {
    // Imagine that this function is fetching user info from another service or database.
    return Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        _swipe = 0;
      });
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
            duration: Duration(milliseconds: 500),
            left: _swipe,
            curve: Curves.fastLinearToSlowEaseIn,
            child: GestureDetector(
              onHorizontalDragStart: (DragStartDetails details) {
                setState(() {
                  _color = (widget.isSuccess == 'true')
                      ? Colors.green
                      : Colors.redAccent;
                  _vcolor = (widget.isSuccess == 'true')
                      ? Colors.greenAccent.shade400
                      : Colors.redAccent.shade400;
                  _swipe = 130;
                  delayButton();
                  delayScreen(widget.isSuccess == 'true');
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
