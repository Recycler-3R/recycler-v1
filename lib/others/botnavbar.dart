import 'package:flutter/material.dart';
import 'package:recycler/screens/chooseloc.dart';

class BottomNavbar extends StatefulWidget {
  BottomNavbar({
    Key? key,
    required this.battery,
  }) : super(key: key);

  String battery;
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xFF9378FF).withOpacity(0.1),
      elevation: 0.0,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            IconButton(
              icon: const Icon(Icons.arrow_back_sharp),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 500),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var curve = Curves.fastOutSlowIn;
                        var curve2 = Curves.fastLinearToSlowEaseIn;

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
                        return ChooseLocation();
                      }),
                );
              },
            ),
            Text(
              'Back to Map',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Spacer(),
            IconButton(
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
            Text(
              '5',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Hero(
              tag: widget.battery,
              child: Image.asset('images/' + widget.battery),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
