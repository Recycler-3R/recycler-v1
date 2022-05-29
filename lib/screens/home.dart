import 'package:flutter/material.dart';
import 'package:recycler/screens/inputname.dart';
// import 'package:recycler/screens/loginScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

void _follow(context) {
  showDialog<String>(
      context: context,
      builder: (BuildContext context) => new AlertDialog(
            title: Text(
              "Enjoying the game?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Public Sans',
              ),
            ),
            content: new Container(
              width: 100.0,
              height: 140.0,
              decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                color: const Color(0xFFFFFF),
                borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
              ),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // dialog centre
                  new Expanded(
                      child: new Container(
                    child: Text(
                      "Rate our app and follow us now!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'helvetica_neue_light',
                      ),
                    ),
                  )),
                  SizedBox(height: 10),
                  new Expanded(
                      child: new Container(
                    child: Text(
                      "Thank you!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontFamily: 'helvetica_neue_light',
                      ),
                    ),
                  )),
                  SizedBox(height: 10),
                  // dialog bottom
                  new Expanded(
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: const Color(0xFF9378FF),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                        onPressed: () => Navigator.pop(context, 'Okay'),
                        child: const Text(
                          'Okay',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Color(0xFF5A40C5),
          ));
}

class _HomeState extends State<Home> {
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
              Colors.pink.shade50,
              Colors.white,
              Colors.pink.shade50,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AnimatedImage(),
                SizedBox(height: height * 0.22),
                Container(
                  height: height * 0.075,
                  width: width * 0.55,
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
                    onPressed: () => {
                      setState(() {
                        _follow(context);
                      })
                    },
                  ),
                ),
                SizedBox(height: height * 0.03),
                Container(
                  height: height * 0.075,
                  width: width * 0.55,
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
                    onPressed: () => {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 700),
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              animation = CurvedAnimation(
                                  parent: animation,
                                  curve: Curves.easeInToLinear);
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return InputName();
                            }),
                      ),
                    },
                  ),
                ),
                SizedBox(height: height * 0.03),
                // Container(
                //   height: height * 0.075,
                //   width: width * 0.55,
                //   decoration: new BoxDecoration(
                //       color: const Color(0xFF30D046),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.green.shade300,
                //           spreadRadius: 3,
                //           blurRadius: 2,
                //           offset: Offset(0, 2), // changes position of shadow
                //         ),
                //       ],
                //       borderRadius: BorderRadius.all(Radius.circular(30.0))),
                //   child: TextButton(
                //     style: TextButton.styleFrom(
                //       textStyle: const TextStyle(
                //           fontSize: 16, fontFamily: 'Public Sans'),
                //     ),
                //     child: const Text(
                //       'Auth',
                //       style: TextStyle(color: Colors.white),
                //     ),
                //     onPressed: () => {
                //       // for (int i = 0; i < 10; i++) {setColorGrid(i)},
                //       Navigator.push(context,
                //           MaterialPageRoute(builder: (context) => AuthApp()))
                //     },
                //   ),
                // ),
              ],
            ),
          ),
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
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);
  late Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0, 0.18),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SlideTransition(
      position: _animation,
      child: Stack(
        children: [
          Positioned(
            top: 200,
            left: 130,
            child: Container(
              height: height * 0.28,
              width: width * 0.28,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/robot.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center),
              ),
            ),
          ),
          Image.asset('images/recyclerletter.png'),
        ],
      ),
    );
  }
}
