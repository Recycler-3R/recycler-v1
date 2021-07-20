import 'package:flutter/material.dart';

class School extends StatefulWidget {
  const School({Key? key}) : super(key: key);

  @override
  _SchoolState createState() => _SchoolState();
}

class _SchoolState extends State<School> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Level 3: School'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: false,
      body: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/school2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/school1.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/school1.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/school2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/school1.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/school1.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/school2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backgrounds/school1.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
      ],
    );
  }
}
