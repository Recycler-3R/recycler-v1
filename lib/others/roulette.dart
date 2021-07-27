import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:recycler/others/itemreward.dart';
import 'dart:async';

import 'package:recycler/screens/congrats.dart';

class Roulette extends StatefulWidget {
  const Roulette({Key? key}) : super(key: key);

  @override
  _RouletteState createState() => _RouletteState();
}

class _RouletteState extends State<Roulette> {
  StreamController<int> selected = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    final items = <String>[
      'Medicine Container',
      'Full Recharge',
      'Bonus',
      'Water Gallon',
      'Robot Hand',
      '+1 Battery Bar',
      'Magnifying Glass',
      'Theme Picker',
    ];

    final colors = <Color>[
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.lightGreen,
      Colors.green,
      Colors.blue,
      Colors.purple,
      Colors.pink.shade700,
    ];
    int index = 0;
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    int randomReward = Fortune.randomInt(0, items.length);

    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.purpleAccent,
                Colors.white,
                Colors.pink.shade100,
                Colors.white,
                Colors.purpleAccent,
              ])),
        ),
        Container(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selected.add(
                  Fortune.randomInt(0, items.length),
                );
              });
            },
            child: Column(
              children: [
                Expanded(
                  child: FortuneWheel(
                    physics: CircularPanPhysics(
                      duration: Duration(seconds: 1),
                      curve: Curves.decelerate,
                    ),
                    onFling: () {
                      selected.add(1);
                    },
                    selected: Stream.value(randomReward),
                    items: [
                      for (var it in items)
                        FortuneItem(
                          child: Text(it),
                          style: FortuneItemStyle(
                            color: colors[index++],
                            borderColor: Colors.black,
                            borderWidth: 3,
                            textAlign: TextAlign.justify,
                            textStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'AutourOne',
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 10.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: height * 0.75,
          left: width * 0.17,
          child: GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ItemReward(
                          item: items[randomReward],
                        )),
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
                  'Get Reward',
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
        ),
      ],
    );
  }
}
