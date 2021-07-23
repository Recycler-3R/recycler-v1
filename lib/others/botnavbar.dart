import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  BottomNavbar({
    Key? key,
    required this.battery,
  }) : super(key: key);

  String battery;
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xFF9378FF).withOpacity(0.1),
      elevation: 0.0,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            IconButton(
              icon: const Icon(Icons.arrow_back_sharp),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: const Icon(Icons.backpack_outlined),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
            Spacer(),
            Hero(
              tag: widget.battery,
              child: Image.asset('images/' + widget.battery),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
