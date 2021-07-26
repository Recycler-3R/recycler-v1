import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'dart:async';

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
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Stack(children: [
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Colors.white,
              Colors.white,
              Color(0xFF9378FF),
              Colors.white,
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
                  styleStrategy: AlternatingStyleStrategy(),
                  selected: Stream.value(0),
                  items: [
                    for (var it in items)
                      FortuneItem(
                        child: Text(it),
                        style: FortuneItemStyle(
                          color: Colors.white,
                          borderColor: Color(0xFF9378FF),
                          borderWidth: 3,
                          textAlign: TextAlign.justify,
                          textStyle: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'AutourOne',
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(0.0, 2.0),
                                blurRadius: 5.0,
                                color: Color.fromARGB(255, 255, 255, 255),
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
      )
    ]);
  }
}
