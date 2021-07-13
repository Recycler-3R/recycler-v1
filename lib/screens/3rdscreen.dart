import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Thirdscreen extends StatefulWidget {
  const Thirdscreen({Key? key}) : super(key: key);

  @override
  _ThirdscreenState createState() => _ThirdscreenState();
}

class _ThirdscreenState extends State<Thirdscreen> {
  double position = 0;
  int forward = 0, backward = 0;
  bool isFlipped = true;
  bool isStart = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    void _showAlert() {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => new AlertDialog(
                title: Text(
                  "Warning!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'helvetica_neue_light',
                  ),
                ),
                content: new Container(
                  width: 100.0,
                  height: 140.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: const Color(0xFFFFFF),
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(10.0)),
                  ),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      // dialog centre
                      new Expanded(
                          child: new Container(
                        child: Text(
                          "You cannot move too far from the area.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: 'helvetica_neue_light',
                          ),
                        ),
                      )),
                      SizedBox(height: 10),
                      new Expanded(
                          child: new Container(
                        child: Text(
                          "Try the opposite way.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: 'helvetica_neue_light',
                          ),
                        ),
                      )),
                      SizedBox(height: 10),
                      // dialog bottom
                      new Expanded(
                        child: new Container(
                          decoration: new BoxDecoration(
                              color: const Color(0xFF9378FF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 16),
                            ),
                            onPressed: () => Navigator.pop(context, 'Okay'),
                            child: const Text(
                              'Okay',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                backgroundColor: Color(0xFF5A40C5),
              ));
    }

    return Scaffold(
      body: Stack(children: [
        AnimatedPositioned(
            top: -(height * 0.7),
            left: position,
            child: Image.asset("images/bgtry.png", height: (height * 2.2)),
            width: (width * 4),
            duration: Duration(microseconds: 200)),
        Positioned(
            top: (height * 0.47),
            left: (height * 0.18),
            child: Container(
              height: (height * 0.2),
              width: (width * 0.3),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: isFlipped == true
                    ? AssetImage("images/baymaxflip.png")
                    : AssetImage("images/baymax.png"),
                fit: BoxFit.fill,
              )),
            )),
        Positioned(
          bottom: 50,
          left: 50,
          child: Container(
              height: 50,
              width: 38,
              decoration: new BoxDecoration(
                  color: const Color(0xFF5A40C5),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 25),
                onPressed: () {
                  setState(() {
                    if (isStart == true && backward < 12 && isFlipped != true) {
                      isFlipped = false;
                      position += 50;
                      backward += 1;
                    } else {
                      backward = 0;
                      isFlipped = true;
                      _showAlert();
                    }
                  });
                },
              )),
        ),
        Positioned(
          bottom: 50,
          right: 50,
          child: Container(
              height: 50,
              width: 40,
              decoration: new BoxDecoration(
                  color: const Color(0xFF5A40C5),
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: IconButton(
                icon: Icon(Icons.arrow_forward_ios,
                    color: Colors.white, size: 25),
                onPressed: () {
                  setState(() {
                    if (forward < 12 && isFlipped != false) {
                      isStart = true;
                      isFlipped = true;
                      position -= 50;
                      forward += 1;
                    } else {
                      forward = 0;
                      isFlipped = false;
                      _showAlert();
                    }
                  });
                },
              )),
        ),
      ]),
    );
  }
}
