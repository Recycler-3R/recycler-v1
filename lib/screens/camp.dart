import 'package:flutter/material.dart';
import 'package:recycler/screens/beach.dart';
import 'package:recycler/screens/threer.dart';
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
                      "You have finished Level 1:",
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
                      " Camp Site ",
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Beach()))
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

class CampSite extends StatefulWidget {
  const CampSite({Key? key}) : super(key: key);

  @override
  _CampSiteState createState() => _CampSiteState();
}

class _CampSiteState extends State<CampSite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Level 1: Camp Site'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: false,
      body: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        SafeArea(
          child: InteractiveViewer(
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
                    top: height * 0.5,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThreeR(item: item[0])))
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 50, 10, 10),
                        height: height * 0.01,
                        width: width * 0.01,
                        child: Hero(
                          tag: item[0],
                          child:
                              Image.asset('images/items/' + item[0] + '.png'),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.2,
                    right: width * 0.1,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThreeR(item: item[1])))
                      },
                      child: Container(
                        height: height * 0.02,
                        width: width * 0.02,
                        child: Hero(
                          tag: item[1],
                          child:
                              Image.asset('images/items/' + item[1] + '.png'),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.4,
                    right: width * 0.5,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThreeR(item: item[2])))
                      },
                      child: Container(
                        height: height * 0.01,
                        width: width * 0.01,
                        child: Hero(
                          tag: item[2],
                          child:
                              Image.asset('images/items/' + item[2] + '.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SafeArea(
          child: InteractiveViewer(
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
                    top: height * 0.3,
                    left: width * 0.4,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThreeR(item: item[3])))
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 50, 10, 10),
                        height: height * 0.01,
                        width: width * 0.01,
                        child: Hero(
                          tag: item[3],
                          child:
                              Image.asset('images/items/' + item[3] + '.png'),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.7,
                    right: width * 0.45,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThreeR(item: item[4])))
                      },
                      child: Container(
                        height: height * 0.02,
                        width: width * 0.02,
                        child: Hero(
                          tag: item[4],
                          child:
                              Image.asset('images/items/' + item[4] + '.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SafeArea(
          child: InteractiveViewer(
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
                    top: height * 0.2,
                    left: width * 0.7,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThreeR(item: item[5])))
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 50, 10, 10),
                        height: height * 0.01,
                        width: width * 0.01,
                        child: Hero(
                          tag: item[5],
                          child:
                              Image.asset('images/items/' + item[5] + '.png'),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.3,
                    right: width * 0.55,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThreeR(item: item[6])))
                      },
                      child: Container(
                        height: height * 0.05,
                        width: width * 0.05,
                        child: Hero(
                          tag: item[6],
                          child:
                              Image.asset('images/items/' + item[6] + '.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SafeArea(
          child: InteractiveViewer(
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
                    top: height * 0.1,
                    left: width * 0.1,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThreeR(item: item[9])))
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20, 50, 10, 10),
                        height: height * 0.09,
                        width: width * 0.09,
                        child: Hero(
                          tag: item[9],
                          child:
                              Image.asset('images/items/' + item[9] + '.png'),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.3,
                    right: width * 0.1,
                    child: InkWell(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThreeR(item: item[7])))
                      },
                      child: Container(
                        height: height * 0.02,
                        width: width * 0.02,
                        child: Hero(
                          tag: item[7],
                          child:
                              Image.asset('images/items/' + item[7] + '.png'),
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
                                builder: (context) => ThreeR(item: item[8])))
                      },
                      child: Container(
                        height: height * 0.08,
                        width: width * 0.08,
                        child: Hero(
                          tag: item[8],
                          child:
                              Image.asset('images/items/' + item[8] + '.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SafeArea(
          child: Stack(children: [
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
        ),
      ],
    );
  }
}
