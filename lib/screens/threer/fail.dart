import 'package:flutter/material.dart';
import 'package:recycler/strings/dialogs.dart';

class FailR extends StatelessWidget {
  const FailR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String failMessage = failDialogs['ps_wrong'].toString();

    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFFACCBEE), Colors.white])),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            Container(
              height: height * 0.50,
              width: width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage("images/sampleitem.png"),
                  ),
                  color: Color(0xFF3DD598),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ]),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: height * 0.3,
              width: width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xFFFBC2EB),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    failMessage,
                    style: TextStyle(
                        fontFamily: 'AutourOne',
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
