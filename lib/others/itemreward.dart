import 'package:flutter/material.dart';
import 'package:recycler/others/unlocklevel.dart';

class ItemReward extends StatelessWidget {
  ItemReward({
    Key? key,
    required this.item,
  }) : super(key: key);
  String item;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    String message = item;
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 700),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                var curve = Curves.linear;

                var curvedAnimation = CurvedAnimation(
                  parent: animation,
                  curve: curve,
                );

                return FadeTransition(
                  opacity: curvedAnimation,
                  child: child,
                );
              },
              pageBuilder: (context, animation, animationTime) {
                return UnlockNext();
              }),
        )
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
              Colors.yellowAccent.shade100,
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
                    'Congratulations!',
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
                  'You got a',
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
              Container(
                height: height * 0.5,
                width: width * 0.5,
                child: Image.asset('images/rewards/' + item + '.png'),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Center(
                  child: Text(
                    message,
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
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
