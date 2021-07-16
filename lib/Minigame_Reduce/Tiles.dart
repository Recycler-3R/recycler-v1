import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Tile extends StatefulWidget {
  var color;
  var onTap;

  Tile({
    Key? key,
    required Color this.color,
    this.onTap,
  }) : super(key: key);

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Ink(
            child: InkWell(
              onTap: widget.onTap,
              child: Container(
                color: widget.color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
