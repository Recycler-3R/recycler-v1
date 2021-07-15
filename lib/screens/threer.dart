import 'package:flutter/material.dart';
import 'package:recycler/screens/sandbox.dart';
import 'dart:math';

void main() => runApp(ThreeR());

class ThreeR extends StatefulWidget {
  const ThreeR({Key? key}) : super(key: key);

  @override
  _ThreeRState createState() => _ThreeRState();
}

class _ThreeRState extends State<ThreeR> {
  @override
  Widget build(BuildContext context) {
    double _width = 200;
    double _height = 300;
    Color _color = Colors.green;
    BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Three R'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        actions: [
          IconButton(
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sandbox()))
                  },
              icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: AnimatedContainer(
          // Use the properties stored in the State class.
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          // Define how long the animation should take.
          duration: Duration(seconds: 1),
          // Provide an optional curve to make the animation feel smoother.
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user taps the button

        child: Icon(Icons.play_arrow),
        onPressed: () {
          // Use setState to rebuild the widget with new values.
          setState(() {
            // Create a random number generator.
            final random = Random();

            // Generate a random width and height.
            _width = 250;
            _height = 350;

            // Generate a random color.
            _color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1,
            );

            // Generate a random border radius.
            _borderRadius = BorderRadius.circular(100.0);
          });
        },
      ),
    );
  }
}
