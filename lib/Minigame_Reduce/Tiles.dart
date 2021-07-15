import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final color;

  const Tile({
    Key? key,
    required Color? this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
