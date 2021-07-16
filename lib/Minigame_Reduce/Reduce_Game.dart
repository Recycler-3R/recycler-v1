import 'package:flutter/material.dart';
import 'dart:math';
import 'package:recycler/Minigame_Reduce/Tiles.dart';

int rand() {
  var rand = new Random();
  return rand.nextInt(3);
}

// Color colorPicker() {}

class Reduce extends StatefulWidget {
  const Reduce({Key? key}) : super(key: key);

  @override
  _ReduceState createState() => _ReduceState();
}

class _ReduceState extends State<Reduce> {
  var rand = new Random();

  List<Color> colorPool = [
    Colors.deepPurple,
    Colors.green,
    Colors.pink.shade100,
  ];
  // int currentColor = rand();

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

  // var colorGrid = {0: Colors.blue.shade100};

  // var get colorValue() {
  //   return colorGrid
  // }

  setColorGrid(int index) {
    colorGrid.putIfAbsent(index, () => colorPool[rand.nextInt(3)]);
    colorGrid.update(index, (value) => colorPool[rand.nextInt(3)]);
    //return val;
    //colorGrid[index] = colorPool[rand.nextInt(3)];
  }

  getColorGrid(int index) {
    if (colorGrid.containsKey(index)) {
      return colorGrid[index];
    }
    //return colorGrid[index].toList();
  }

  // initColorGrid() {
  //   for (int i = 0; i < colorGrid.length; i++) {
  //     setColorGrid(i);
  //     //print('Color of Tile[' + i.toString() + ']: ' + getColorGrid(i));
  //   }
  // }

  @override
  void initState() {
    for (int i = 0; i < 12; i++) {
      setColorGrid(i);
      //print('Color of Tile[' + i.toString() + ']: ' + getColorGrid(i));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: GridView.builder(
                    itemCount: 12,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      return Tile(
                          color: getColorGrid(index),
                          onTap: () {
                            setState(() {
                              setColorGrid(index);
                            });
                          });
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
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

  