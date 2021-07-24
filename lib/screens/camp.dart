import 'package:flutter/material.dart';
import 'package:recycler/others/botnavbar.dart';
import 'package:recycler/others/sitepage1.dart';
import 'package:recycler/screens/beach.dart';
import 'package:recycler/screens/threer.dart';
import 'package:recycler/others/items.dart';

void _follow(context, battery) {
  showDialog<String>(
      context: context,
      builder: (BuildContext context) => new AlertDialog(
            title: Text(
              "Congratulations!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
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
                  Container(
                    child: Text(
                      "You have finished Level 1:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'helvetica_neue_light',
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 25,
                    child: Text(
                      " Camp Site ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontFamily: 'helvetica_neue_light',
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  // dialog bottom
                  Container(
                    decoration: new BoxDecoration(
                        color: const Color(0xFF9378FF),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () => {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 1500),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                var curve = Curves.easeInToLinear;
                                var curve2 = Curves.easeOut;

                                var curvedAnimation = CurvedAnimation(
                                  reverseCurve: curve2,
                                  parent: animation,
                                  curve: curve,
                                );

                                return FadeTransition(
                                  opacity: curvedAnimation,
                                  child: child,
                                );
                              },
                              pageBuilder: (context, animation, animationTime) {
                                return Beach(battery: battery);
                              }),
                        ),
                      },
                      child: const Text(
                        'Next Level',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Color(0xFF5A40C5),
          ));
}

class CampSite extends StatefulWidget {
  CampSite({
    Key? key,
    required this.battery,
  }) : super(key: key);

  String battery;

  @override
  _CampSiteState createState() => _CampSiteState();
}

class _CampSiteState extends State<CampSite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Image.asset('images/Camp_Icon.png'),
        ),
        title: Text(
          'Level 1: Camp Site',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w300,
            fontFamily: 'AutourOne',
            shadows: <Shadow>[
              Shadow(
                offset: Offset(3.0, 3.0),
                blurRadius: 5.0,
                color: Color.fromARGB(0, 0, 0, 0),
              ),
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 5.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ],
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: MyStatefulWidget(
        battery: widget.battery,
      ),
      bottomNavigationBar: BottomNavbar(battery: widget.battery),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key, required this.battery}) : super(key: key);
  String battery;

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    int pageChanged = 0;
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final String loc1 = 'camp1.png';
    final String loc2 = 'camp2.png';

    return PageView(
      scrollDirection: Axis.horizontal,
      //physics: NeverScrollableScrollPhysics(),
      controller: controller,
      onPageChanged: (index) {
        setState(() {
          pageChanged = index;
        });
        print(pageChanged);
      },
      children: <Widget>[
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgrounds/" + loc1),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center),
          ),
          child: Stack(
            children: [
              GestureDetector(
                onDoubleTap: () {
                  controller.animateToPage(1,
                      duration: Duration(milliseconds: 550),
                      curve: Curves.easeInToLinear);
                },
                child: AnimatedImage(),
              ),
            ],
          ),
        ),
        SitePage(
          top: 0.48,
          left: 0.7,
          right: 0.6,
          location: loc1,
          item1: item[0],
          item2: item[1],
          item3: item[2],
        ),
        SitePage(
          top: 0.38,
          left: 0.25,
          right: 0.01,
          location: loc2,
          item1: item[3],
          item2: item[4],
          item3: item[5],
        ),
        InteractiveViewer(
          maxScale: 5.0,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/camp2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: height * 0.35,
                  left: width * 0.15,
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThreeR(item: item[6])))
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20, 50, 10, 10),
                      height: height * 0.07,
                      width: width * 0.07,
                      child: Hero(
                        tag: item[6],
                        child: Image.asset('images/items/' + item[6] + '.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.8,
                  right: width * 0.15,
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThreeR(item: item[7])))
                    },
                    child: Container(
                      height: height * 0.12,
                      width: width * 0.12,
                      child: Hero(
                        tag: item[7],
                        child: Image.asset('images/items/' + item[7] + '.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.451,
                  right: width * 0.145,
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThreeR(item: item[8])))
                    },
                    child: Container(
                      height: height * 0.08,
                      width: width * 0.08,
                      child: Hero(
                        tag: item[8],
                        child: Image.asset('images/items/' + item[8] + '.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        InteractiveViewer(
          maxScale: 5.0,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/camp2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: height * 0.4,
                  left: width * 0.7,
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThreeR(item: item[9])))
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20, 50, 10, 10),
                      height: height * 0.07,
                      width: width * 0.07,
                      child: Hero(
                        tag: item[9],
                        child: Image.asset('images/items/' + item[9] + '.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.5,
                  right: width * 0.65,
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThreeR(item: item[10])))
                    },
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.05,
                      child: Hero(
                        tag: item[10],
                        child: Image.asset('images/items/' + item[10] + '.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.95,
                  right: width * 0.65,
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThreeR(item: item[11])))
                    },
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.05,
                      child: Hero(
                        tag: item[11],
                        child: Image.asset('images/items/' + item[11] + '.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        InteractiveViewer(
          maxScale: 5.0,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/camp1.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: height * 0.7,
                  left: width * 0.4,
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThreeR(item: item[12])))
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20, 50, 10, 10),
                      height: height * 0.09,
                      width: width * 0.09,
                      child: Hero(
                        tag: item[12],
                        child: Image.asset('images/items/' + item[12] + '.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.4,
                  right: width * 0.8,
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThreeR(item: item[13])))
                    },
                    child: Container(
                      height: height * 0.12,
                      width: width * 0.12,
                      child: Hero(
                        tag: item[13],
                        child: Image.asset('images/items/' + item[13] + '.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.75,
                  right: width * 0.8,
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThreeR(item: item[14])))
                    },
                    child: Container(
                      height: height * 0.18,
                      width: width * 0.18,
                      child: Hero(
                        tag: item[14],
                        child: Image.asset('images/items/' + item[14] + '.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Stack(children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/camp2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
          Positioned(
            top: height * 0.45,
            left: width * 0.13,
            child: GestureDetector(
              onTap: () => {_follow(context, widget.battery)},
              child: Container(
                height: height * 0.12,
                width: width * 0.75,
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
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'You have completed the level!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'AutourOne',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }
} //onPressed: () => {_follow(context, widget.battery)},child: Text('You have completed the level!'),

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({Key? key}) : super(key: key);

  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1000),
  )..repeat(reverse: true);
  late Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0.0, -0.01),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  var padding = EdgeInsets.all(28.0);
  String message = 'Hi there, Recycler!';

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
            height: height * 0.4,
            width: width * 0.4,
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
          child: InkWell(
            onTap: () {
              setState(() {
                padding = EdgeInsets.all(18.0);
                message = 'Time to start cleaning up!';
              });
            },
            child: Stack(
              children: [
                Positioned(
                  top: height * 0.25,
                  left: width * 0.39,
                  child: Container(
                    height: height * 0.15,
                    width: width * 0.5,
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
                      child: Text(
                        message,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'AutourOne',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
