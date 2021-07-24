import 'package:flutter/material.dart';
import 'package:recycler/others/botnavbar.dart';
import 'package:recycler/others/items.dart';
import 'package:recycler/others/sitepage1.dart';
import 'package:recycler/screens/home.dart';

void _follow(context) {
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
                  Container(
                    child: Text(
                      "You have finished Level 3:",
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
                      " School ",
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()))
                        },
                        child: const Text(
                          'Home',
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

class School extends StatefulWidget {
  School({
    Key? key,
    required this.battery,
  }) : super(key: key);
  String battery;
  @override
  _SchoolState createState() => _SchoolState();
}

class _SchoolState extends State<School> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Image.asset('images/School_Icon.png'),
        ),
        title: Text(
          'Level 3: School',
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
      body: const MyStatelessWidget(),
      bottomNavigationBar: BottomNavbar(battery: widget.battery),
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

    final String loc1 = 'school2.png';
    final String loc2 = 'school1.png';

    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        SitePage(
            top: 0.67,
            left: 0.5,
            right: 0.6,
            item1: item[3],
            item2: item[4],
            item3: item[5],
            location: loc1),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgrounds/school1.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center),
          ),
        ),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgrounds/school2.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center),
          ),
        ),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgrounds/school1.png"),
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
                image: AssetImage("images/backgrounds/school1.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center),
          ),
        ),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgrounds/school2.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center),
          ),
        ),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/backgrounds/school1.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.center),
          ),
        ),
        Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/backgrounds/school1.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center),
              ),
            ),
            Positioned(
              top: height * 0.45,
              left: width * 0.13,
              child: GestureDetector(
                onTap: () => {_follow(context)},
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
          ],
        ),
      ],
    );
  }
}
