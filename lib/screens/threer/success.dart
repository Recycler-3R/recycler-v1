import 'package:flutter/material.dart';
import 'package:recycler/Minigame_Reduce/Reduce_Game.dart';
import 'package:recycler/strings/dialogs.dart';

class SuccessR extends StatelessWidget {
  final String finalR;

  const SuccessR({
    Key? key,
    required this.finalR,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String successMessage =
        resultDialogs['ps_' + finalR + 'correct'].toString();
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
                colors: <Color>[Color(0xFFACCBEE), Colors.white])),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                height: height * 0.50,
                width: width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage("images/items/coffeecup.png"),
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
                height: height * 0.025,
              ),
              Container(
                height: height * 0.35,
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
                        'GREAT!',
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
                        successMessage,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'AutourOne',
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            color: Colors.black),
                      ),
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 20,
                            width: 100,
                            alignment: Alignment.center,
                            child: Expanded(
                              child: Text('Back'),
                            ),
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Reduce()));
                          },
                          child: Container(
                            height: 20,
                            width: 100,
                            alignment: Alignment.center,
                            child: Expanded(
                              child: Text('Play Game'),
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
