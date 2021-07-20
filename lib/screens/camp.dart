import 'package:flutter/material.dart';
import 'package:recycler/screens/beach.dart';
import 'package:recycler/screens/threer.dart';

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
    String item1 = 'coffeecup';
    String item2 = 'soapbottle';

    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/camp1.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThreeR(item: item1)))
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 50, 10, 10),
                    height: height * 0.05,
                    width: width * 0.05,
                    child: Hero(
                      tag: item1,
                      child: Image.asset('images/items/coffeecup.png'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThreeR(item: item2)))
                  },
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.1,
                    child: Hero(
                      tag: item2,
                      child: Image.asset("images/items/soapbottle.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/camp2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/camp2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/camp1.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/camp2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/camp2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/camp1.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/camp2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
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
