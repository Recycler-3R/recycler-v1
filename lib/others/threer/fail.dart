import 'package:flutter/material.dart';
import 'package:recycler/others/dialogs.dart';

class FailR extends StatelessWidget {
  final String finalR;
  final String item;
  const FailR({
    Key? key,
    required this.finalR,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String failMessage = resultDialogs[item + finalR + '_wrong'].toString();
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Colors.redAccent.shade100,
              Colors.white,
            ])),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: height * 0.40,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
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
                  Container(
                    height: height * 0.30,
                    width: width * 0.6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/items/" + item + ".png"),
                          fit: BoxFit.contain),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: height * 0.45,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text(
                        'OOPS!',
                        style: TextStyle(
                            fontFamily: 'AutourOne',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      child: Text(
                        failMessage,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'AutourOne',
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            color: Colors.black),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 150,
                      decoration: new BoxDecoration(
                          color: const Color(0xFF9378FF),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                        onPressed: () => {
                          Navigator.pop(
                            context,
                          ),
                        },
                        child: const Text(
                          'Back',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
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
