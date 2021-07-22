import 'package:flutter/material.dart';
import 'package:recycler/screens/threer.dart';

class SitePage extends StatelessWidget {
  const SitePage({
    Key? key,
    required this.top,
    required this.left,
    required this.right,
    required this.item1,
    required this.item2,
    required this.item3,
    required this.location,
  }) : super(key: key);

  final String item1;
  final String item2;
  final String item3;
  final double top;
  final double left;
  final double right;
  final String location;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return InteractiveViewer(
      maxScale: 5.0,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/backgrounds/" + location),
              fit: BoxFit.fitWidth,
              alignment: Alignment.center),
        ),
        child: Stack(
          children: [
            Positioned(
              top: height * top,
              child: InkWell(
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThreeR(item: item1)))
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 50, 10, 10),
                  height: height * 0.09,
                  width: width * 0.09,
                  child: Hero(
                    tag: item1,
                    child: Image.asset('images/items/' + item1 + '.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: height * top,
              right: width * right * 0.04,
              child: InkWell(
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThreeR(item: item2)))
                },
                child: Container(
                  height: height * 0.05,
                  width: width * 0.05,
                  child: Hero(
                    tag: item2,
                    child: Image.asset('images/items/' + item2 + '.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: height * 0.9,
              left: width * left,
              child: InkWell(
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThreeR(item: item3)))
                },
                child: Container(
                  height: height * 0.07,
                  width: width * 0.07,
                  child: Hero(
                    tag: item3,
                    child: Image.asset('images/items/' + item3 + '.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
