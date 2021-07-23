import 'package:flutter/material.dart';
import 'package:recycler/screens/camp.dart';
import 'package:recycler/screens/beach.dart';
import 'package:recycler/screens/school.dart';
import 'package:recycler/others/globaldata.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

void _chooseloc(context, Widget location, alignment) {
  Navigator.push(
    context,
    PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 500),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var curve = Curves.fastOutSlowIn;
          var curve2 = Curves.fastLinearToSlowEaseIn;

          var curvedAnimation = CurvedAnimation(
            reverseCurve: curve2,
            parent: animation,
            curve: curve,
          );

          return ScaleTransition(
            alignment: alignment,
            scale: curvedAnimation,
            child: child,
          );
        },
        pageBuilder: (context, animation, animationTime) {
          return location;
        }),
  );
}

Future<void> setBat(decrementBat) {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(const Duration(milliseconds: 1000), () {
    decrementBat();
  });
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    GlobalData _globalData = GlobalData();
    void decrementBat() {
      setState(() {
        _globalData.decrementBattery();
        if (_globalData.getbattery == 0) {
          _globalData.setbattery();
        }
      });
    }

    String battery;
    if (_globalData.getbattery == 3) {
      battery = 'fullbattery.png';
    } else if (_globalData.getbattery == 2) {
      battery = 'midbattery.png';
    } else {
      battery = 'lowbattery.png';
    }
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFFBC2EB),
            Color(0xFFA6C1EE),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: height * 0.77,
            right: width * 0.55,
            child: Container(
              height: height * 0.15,
              width: width * 0.5,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.transparent,
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Please select location...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontFamily: 'AutourOne',
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    fontSize: 17,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.5,
            left: width * 0.3,
            child: Container(
              height: height * 0.7,
              width: width * 0.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/halfrobot.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center),
              ),
            ),
          ),
          Positioned(
            top: height * 0.8,
            right: width * 0.72,
            child: Container(
              height: height * 0.2,
              width: width * 0.2,
              child: Hero(
                tag: battery,
                child: Image.asset('images/' + battery),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                height: height * 0.08,
                width: width,
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
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'I am ready to CLEAN! Where should I start?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'AutourOne',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              GestureDetector(
                onTap: () {
                  _chooseloc(
                    context,
                    CampSite(battery: battery),
                    Alignment.topCenter,
                  );
                  setBat(decrementBat);
                },
                child: Image.asset('images/Camp_Icon.png'),
              ),
              SizedBox(height: height * 0.02),
              GestureDetector(
                onTap: () {
                  _chooseloc(
                    context,
                    Beach(
                      battery: battery,
                    ),
                    Alignment.center,
                  );

                  setBat(decrementBat);
                },
                child: Image.asset('images/Beach_Icon.png'),
              ),
              SizedBox(height: height * 0.02),
              GestureDetector(
                onTap: () {
                  _chooseloc(
                    context,
                    School(
                      battery: battery,
                    ),
                    Alignment.bottomCenter,
                  );

                  setBat(decrementBat);
                },
                child: Image.asset('images/School_Icon.png'),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
