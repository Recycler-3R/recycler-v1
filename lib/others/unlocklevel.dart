import 'package:flutter/material.dart';
import 'package:recycler/screens/chooseloc.dart';

class UnlockNext extends StatelessWidget {
  const UnlockNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
            Colors.pinkAccent.shade100,
            Colors.white,
          ])),
      child: Center(
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: EdgeInsets.all(5),
              child: Center(
                child: Text(
                  'You unlocked',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'AutourOne',
                    fontWeight: FontWeight.w400,
                    fontSize: 32,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'the next level',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'AutourOne',
                  fontWeight: FontWeight.w400,
                  fontSize: 28,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Spacer(),
            Container(
              height: height * 0.6,
              width: width * 0.6,
              child: Column(
                children: [
                  Image.asset('images/Beach_Icon.png'),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'Beach',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'AutourOne',
                        fontWeight: FontWeight.w400,
                        fontSize: 28,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseLocation()),
                      )
                    },
                    child: Container(
                      height: height * 0.08,
                      width: width * 0.65,
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
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          'Back to Map',
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
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
