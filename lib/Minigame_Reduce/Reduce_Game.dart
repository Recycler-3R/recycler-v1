import 'package:flutter/material.dart';
import 'package:recycler/Minigame_Reduce/Tiles.dart';

class Reduce extends StatelessWidget {
  const Reduce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Tile(color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
