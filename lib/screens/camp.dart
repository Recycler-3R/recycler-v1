import 'package:flutter/material.dart';
import 'package:recycler/screens/beach.dart';
import 'package:recycler/screens/threer.dart';

class CampSite extends StatefulWidget {
  const CampSite({Key? key}) : super(key: key);

  @override
  _CampSiteState createState() => _CampSiteState();
}

class _CampSiteState extends State<CampSite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camp Site'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Beach()))
                  },
              icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
      extendBodyBehindAppBar: true,
      body: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    String item1 = 'sampleitem';
    String item2 = 'soapbottle';

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
                  image: AssetImage("images/camp1.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThreeR(item: item1)))
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 50, 10, 10),
                    height: height * 0.05,
                    width: width * 0.05,
                    child: Hero(
                      tag: item1,
                      child: Image.asset('images/sampleitem.png'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ThreeR(item: item2)))
                  },
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.1,
                    child: Hero(
                      tag: item2,
                      child: Image.asset("images/soapbottle.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/camp2.png"),
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
                  image: AssetImage("images/camp2.png"),
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
                  image: AssetImage("images/camp1.png"),
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
                  image: AssetImage("images/camp2.png"),
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
                  image: AssetImage("images/camp2.png"),
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
                  image: AssetImage("images/camp1.png"),
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
                  image: AssetImage("images/camp2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center),
            ),
          ),
        ),
      ],
    );
  }
}
