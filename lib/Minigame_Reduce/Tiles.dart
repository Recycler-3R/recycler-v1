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
      color: Colors.white10,
      child: Transform.rotate(
        angle: 3.1416 / 4,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Ink(
              child: InkWell(
                onTap: widget.onTap,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    border: Border.all(
                      width: 3.0,
                      style: BorderStyle.solid,
                    ),
                    color: widget.color,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
