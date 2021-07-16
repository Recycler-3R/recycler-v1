import 'package:flutter/material.dart';

class SuccessR extends StatelessWidget {
  const SuccessR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
    );
  }
}
