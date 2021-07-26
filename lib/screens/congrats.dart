import 'package:flutter/material.dart';
import 'package:recycler/screens/camp.dart';

class CongratsNotif extends StatefulWidget {
  const CongratsNotif({Key? key}) : super(key: key);

  @override
  _CongratsNotifState createState() => _CongratsNotifState();
}

class _CongratsNotifState extends State<CongratsNotif> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.purple.shade100,
              Colors.white,
              Colors.deepPurpleAccent.shade100,
            ],
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: Duration(milliseconds: 600),
                  transitionsBuilder:
                      (context, animation, animationTime, child) {
                    animation = CurvedAnimation(
                        parent: animation, curve: Curves.easeInOut);
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  pageBuilder: (context, animation, animationTime) {
                    return CampSite(battery: 'fullbattery.png');
                  }),
            );
          },
          child: AnimatedImage(),
        ),
      ),
    );
  }
}

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({Key? key}) : super(key: key);

  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1200),
  )..repeat(reverse: true);
  late Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0.0, -0.01),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
  var padding = EdgeInsets.all(28.0);
  String message = 'GOOD JOB!';

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Positioned(
          top: height * 0.38,
          left: 30,
          child: Container(
            height: height * 0.7,
            width: width * 0.7,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/robot.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SlideTransition(
          position: _animation,
          child: Stack(
            children: [
              Positioned(
                top: height * 0.22,
                left: width * 0.1,
                child: Container(
                  height: height * 0.20,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    color: Color(0xFF9378FF).withOpacity(0.8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurpleAccent,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: padding,
                    child: Center(
                      child: Text(
                        message,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'AutourOne',
                          fontWeight: FontWeight.w400,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
