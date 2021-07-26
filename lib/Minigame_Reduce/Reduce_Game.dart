import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:recycler/Minigame_Reduce/Tiles.dart';
import 'package:recycler/screens/congrats.dart';

// int rand() {
//   var rand = new Random();
//   return rand.nextInt(3);
// }

class Reduce extends StatefulWidget {
  const Reduce({Key? key}) : super(key: key);

  @override
  _ReduceState createState() => _ReduceState();
}

class _ReduceState extends State<Reduce> {
  var rand = new Random();
  var ongoingGame = true;
  int chosenColorActive = 0;
  late Color chosenColorToPop;
  late Color indicatorColor = colorPool[rand.nextInt(3)];

  List<Color> colorPool = [
    Colors.deepPurple,
    Colors.green,
    Colors.pink.shade100,
  ];

  Map<int, Color> colorGrid = Map();

  // Map<int, Color> colorGrid = {
  //   0: Colors.pink.shade100,
  //   1: Colors.deepPurple,
  //   2: Colors.green,
  //   3: Colors.deepPurple,
  //   4: Colors.pink.shade100,
  //   5: Colors.deepPurple,
  //   6: Colors.green,
  //   7: Colors.pink.shade100,
  //   8: Colors.green,
  //   9: Colors.deepPurple,
  //   10: Colors.green,
  //   11: Colors.green,
  // };

  setColorGrid(int index) {
    colorGrid.putIfAbsent(index, () => colorPool[rand.nextInt(3)]);
    colorGrid.update(index, (value) => colorPool[rand.nextInt(3)]);
  }

  setColorPopped(int index) {
    colorGrid.update(index, (value) => Colors.white);
  }

  getColorGrid(int index) {
    if (colorGrid.containsKey(index)) {
      return colorGrid[index];
    }
  }

  void startGame(Map board, Color chosen) {
    Timer.periodic(
      Duration(milliseconds: 10),
      (timer) {
        chosenColorActive = 0;
        checkBoard(board, chosen);

        if (!ongoingGame) {
          //  Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => Home()));
          _congrats(context, 'fullbattery.png');
        }

        // setState(() {

        // });
      },
    );
  }

  void spawner(int index, Map board, Color chosen) {
    checkBoard(board, chosen);
    setColorPopped(index);
    Timer.periodic(Duration(milliseconds: 700), (timer) {
      //add loading/growing animation
      if (getColorGrid(index) == Colors.white) {
        setState(() {
          setColorGrid(index);
        });
      }
    });
  }

  void checkBoard(Map board, Color chosen) {
    for (Color currentColor in board.values) {
      if (currentColor == chosen) {
        chosenColorActive++;
      }
    }
    if (chosenColorActive == 0) {
      ongoingGame = false;
    } else {
      ongoingGame = true;
    }
  }

  @override
  void initState() {
    chosenColorToPop = colorPool[rand.nextInt(3)];
    for (int i = 0; i < 12; i++) {
      setColorGrid(i);
      //print('Color of Tile[' + i.toString() + ']: ' + getColorGrid(i));
      startGame(colorGrid, indicatorColor);
      // startGame(colorGrid, colorPool[rand.nextInt(3)]);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Container(
        child: Stack(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Color(0xFFFFDFF6),
                        Color(0xFFFFFFFF),
                        Color(0xFFFFFFFF),
                      ]),
                ),
                child: GridView.builder(
                    itemCount: 12,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      return Tile(
                          color: getColorGrid(index),
                          onTap: () {
                            setState(() {
                              // checkBoard(colorGrid, chosenColorToPop);
                              spawner(index, colorGrid, Colors.deepPurple);
                            });
                            // setState(() {
                            //   if (ongoingGame) {
                            //     setColorGrid(index);
                            //     checkBoard(colorGrid, Colors.deepPurple);
                            //     if (ongoingGame == false) {
                            //       Navigator.pop(context);
                            //     }
                            //   } else {
                            //     Navigator.pop(context);
                            //   }
                            // });
                          });
                    }),
              ),
            ),
            Positioned(
              left: width * 0.20,
              bottom: height * 0.10,
              child: Container(
                height: height * 0.10,
                width: width * 0.60,
                decoration: BoxDecoration(
                    color: indicatorColor,
                    border: Border.all(width: 3.0),
                    borderRadius: BorderRadius.circular(50.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _congrats(context, battery) {
  Navigator.push(
    context,
    PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 700),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var curve = Curves.easeInToLinear;

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
          return CongratsNotif();
        }),
  );
  // showDialog<String>(
  //     context: context,
  //     builder: (BuildContext context) => new AlertDialog(
  //           title: Text(
  //             "Congratulations!",
  //             style: TextStyle(
  //               color: Colors.white,
  //               fontSize: 20.0,
  //               fontWeight: FontWeight.bold,
  //               fontFamily: 'Public Sans',
  //             ),
  //           ),
  //           content: new Container(
  //             width: 100.0,
  //             height: 140.0,
  //             decoration: new BoxDecoration(
  //               shape: BoxShape.rectangle,
  //               color: const Color(0xFFFFFF),
  //               borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
  //             ),
  //             child: new Column(
  //               crossAxisAlignment: CrossAxisAlignment.stretch,
  //               children: <Widget>[
  //                 // dialog centre
  //                 Container(
  //                   child: Text(
  //                     "You have finished the minigame: ",
  //                     style: TextStyle(
  //                       color: Colors.white,
  //                       fontSize: 18.0,
  //                       fontFamily: 'helvetica_neue_light',
  //                     ),
  //                   ),
  //                 ),
  //                 SizedBox(height: 15),
  //                 Container(
  //                   width: 25,
  //                   child: Text(
  //                     "Reduce",
  //                     textAlign: TextAlign.center,
  //                     style: TextStyle(
  //                       color: Colors.white,
  //                       fontSize: 24.0,
  //                       fontFamily: 'helvetica_neue_light',
  //                     ),
  //                   ),
  //                 ),
  //                 SizedBox(height: 25),
  //                 // dialog bottom
  //                 Container(
  //                   decoration: new BoxDecoration(
  //                       color: const Color(0xFF9378FF),
  //                       borderRadius: BorderRadius.all(Radius.circular(20.0))),
  //                   child: TextButton(
  //                     style: TextButton.styleFrom(
  //                       textStyle: const TextStyle(fontSize: 16),
  //                     ),
  //                     onPressed: () => {
  //                       Navigator.push(
  //                         context,
  //                         PageRouteBuilder(
  //                             transitionDuration: Duration(milliseconds: 1500),
  //                             transitionsBuilder: (context, animation,
  //                                 secondaryAnimation, child) {
  //                               var curve = Curves.easeInToLinear;
  //                               var curve2 = Curves.easeOut;

  //                               var curvedAnimation = CurvedAnimation(
  //                                 reverseCurve: curve2,
  //                                 parent: animation,
  //                                 curve: curve,
  //                               );

  //                               return FadeTransition(
  //                                 opacity: curvedAnimation,
  //                                 child: child,
  //                               );
  //                             },
  //                             pageBuilder: (context, animation, animationTime) {
  //                               return CampSite(battery: battery);
  //                             }),
  //                       ),
  //                     },
  //                     child: const Text(
  //                       'Back to Map',
  //                       style: TextStyle(color: Colors.white),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           backgroundColor: Color(0xFF5A40C5),
  //         ));
}










//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Column(
//           children: [
//             Spacer(),
//             Expanded(
//               child: Row(
//                 children: [
//                   Tile(
//                     color: getColorGrid(1),
//                     // onTap: () {
//                     //   setState(() {
//                     //     setColorGrid(1);
//                     //     print('Color of Tile[' +
//                     //         1.toString() +
//                     //         ']: ' +
//                     //         getColorGrid(1));
//                     //   });
//                     // },
//                   ),
//                   Spacer(),
//                   Tile(
//                     color: getColorGrid(2),
//                     // onTap: () {
//                     //   setState(() {
//                     //     setColorGrid(2);
//                     //   });
//                     // },
//                   ),
//                   Spacer(),
//                   Tile(
//                     color: getColorGrid(3),
//                     // onTap: () {
//                     //   setState(() {
//                     //     setColorGrid(3);
//                     //   });
//                     // },
//                   )
//                 ],
//               ),
//             ),
//             Spacer(),
//             Expanded(
//               child: Row(
//                 children: [
//                   Tile(
//                     color: getColorGrid(4),
//                     // onTap: () {
//                     //   setState(() {
//                     //     setColorGrid(4);
//                     //   });
//                     // },
//                   ),
//                   Spacer(),
//                   Tile(
//                     color: getColorGrid(5),
//                     // onTap: () {
//                     //   setState(() {
//                     //     setColorGrid(5);
//                     //   });
//                     // },
//                   )
//                 ],
//               ),
//             ),
//             Spacer(),
//             Expanded(
//               child: Row(
//                 children: [
//                   Tile(
//                     color: getColorGrid(6),
//                     // onTap: () {
//                     //   setState(() {
//                     //     setColorGrid(6);
//                     //   });
//                     // },
//                   ),
//                   Spacer(),
//                   Tile(
//                     color: getColorGrid(7),
//                     // onTap: () {
//                     //   setState(() {
//                     //     setColorGrid(7);
//                     //   });
//                     // },
//                   ),
//                   Spacer(),
//                   Tile(
//                     color: getColorGrid(8),
//                     // onTap: () {
//                     //   setState(() {
//                     //     setColorGrid(8);
//                     //   });
//                     // },
//                   )
//                 ],
//               ),
//             ),
//             Spacer(),
//             Expanded(
//               child: Row(
//                 children: [
//                   Tile(
//                     color: getColorGrid(9),
//                     // onTap: () {
//                     //   setState(() {
//                     //     setColorGrid(9);
//                     //   });
//                     // },
//                   ),
//                   Spacer(),
//                   Tile(
//                     color: getColorGrid(10),
//                     // onTap: () {
//                     //   setState(() {
//                     //     setColorGrid(10);
//                     //   });
//                     // },
//                   )
//                 ],
//               ),
//             ),
//             Spacer(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // List<int> btnPool = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//   List colorPool = [Colors.deepPurple, Colors.green, Colors.pink.shade100];
//   int currentColor = rand();

//   // List<Widget> _getTile(List<int> btnPool) {
//   //   final List<Widget> tiles = <Widget>[];
//   //   for (int i = 0; i < btnPool.length; i++) {
//   //     tiles.add(
//   //       new GridTile(
//   //         child: new InkWell(
//   //           enableFeedback: true,
//   //           child: Tile(
//   //             color: colorPool[currentColor],
//   //           ),
//   //         ),
//   //       ),
//   //     );
//   //   }
//   //   return tiles;
//   // }

  
