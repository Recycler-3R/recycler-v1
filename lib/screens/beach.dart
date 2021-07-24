import 'package:flutter/material.dart';
import 'package:recycler/others/botnavbar.dart';
import 'package:recycler/others/sitepage1.dart';
import 'package:recycler/screens/school.dart';
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
                      "You have finished Level 2:",
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
                      " Beach ",
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
                        onPressed: () => {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration:
                                    Duration(milliseconds: 1500),
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
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return School(battery: battery);
                                }),
                          ),
                        },
                        child: const Text(
                          'Next Level',
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

class Beach extends StatefulWidget {
  Beach({
    Key? key,
    required this.battery,
  }) : super(key: key);

  String battery;
  @override
  _BeachState createState() => _BeachState();
}

class _BeachState extends State<Beach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Image.asset('images/Beach_Icon.png'),
        ),
        title: Text(
          'Level 2: Beach',
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
      body: MyStatelessWidget(
        battery: widget.battery,
      ),
      bottomNavigationBar: BottomNavbar(battery: widget.battery),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({
    Key? key,
    required this.battery,
  }) : super(key: key);
  String battery;
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final String loc1 = 'beach1.png';
    final String loc2 = 'beach2.png';

    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        SitePage(
            top: 0.8,
            left: 0.4,
            right: 0.3,
            item1: item[3],
            item2: item[4],
            item3: item[5],
            location: loc1),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgrounds/beach1.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center),
          ),
        ),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgrounds/beach2.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center),
          ),
        ),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgrounds/beach1.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center),
          ),
        ),
        SitePage(
            top: 0.76,
            left: 0.64,
            right: 0.98,
            item1: item[6],
            item2: item[7],
            item3: item[8],
            location: loc2),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgrounds/beach1.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center),
          ),
        ),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgrounds/beach2.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center),
          ),
        ),
        Stack(children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/beach2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
          Positioned(
            top: height * 0.45,
            left: width * 0.13,
            child: GestureDetector(
              onTap: () => {_follow(context, battery)},
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
}
