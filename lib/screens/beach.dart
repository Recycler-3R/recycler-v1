import 'package:flutter/material.dart';
import 'package:recycler/others/sitepage1.dart';
import 'package:recycler/screens/school.dart';
import 'package:recycler/others/items.dart';

void _follow(context) {
  showDialog<String>(
      context: context,
      builder: (BuildContext context) => new AlertDialog(
            title: Text(
              "Congratulations!",
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
                      "You have finished Level 2:",
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
                      " Beach ",
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
                        onPressed: () => {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 500),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  var begin = Offset(1.0, 0.0);
                                  var end = Offset.zero;
                                  var curve = Curves.fastOutSlowIn;
                                  var curve2 = Curves.fastLinearToSlowEaseIn;

                                  var tween = Tween(begin: begin, end: end);
                                  var curvedAnimation = CurvedAnimation(
                                    reverseCurve: curve2,
                                    parent: animation,
                                    curve: curve,
                                  );

                                  return SlideTransition(
                                    position: tween.animate(curvedAnimation),
                                    child: child,
                                  );
                                },
                                pageBuilder:
                                    (context, animation, animationTime) {
                                  return School();
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
  const Beach({Key? key}) : super(key: key);

  @override
  _BeachState createState() => _BeachState();
}

class _BeachState extends State<Beach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Level 2: Beach',
          style: TextStyle(
            color: Colors.black,
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
      body: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

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
            top: height * 0.3,
            child: Container(
              height: height * 0.2,
              width: width,
              child: ElevatedButton(
                onPressed: () => {_follow(context)},
                child: Text('FINISH?'),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
