import 'dart:ui';

import 'package:ally_ui/utils/ally_collors.dart';
import 'package:flutter/material.dart';

import 'my_stories.dart';

class MyStatusesPage extends StatefulWidget {
  @override
  _MyStatusesPageState createState() => _MyStatusesPageState();
}

class _MyStatusesPageState extends State<MyStatusesPage> {
  List items = getMyStoryImageAddCards();
  int currentIndex;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My Stories")),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: iconAppColor,
        ),
      ),
      body: Container(
        color: secondaryColor,
        child: Stack(
          children: <Widget>[
            ClipPath(
              child: Container(
                color: primaryColor,
              ),
              clipper: GetClipper(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: mystoriesimages(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: addStatusBottomNavBar(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mystoriesimages() {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Card(
                    elevation: 5,
                    child: Container(
                      height:150.0,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            height: 150.0,
                            width: MediaQuery.of(context).size.width / 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/images/bble1.jpg"))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }));
  }

  Widget addStatusBottomNavBar(BuildContext context) {
    return Container(
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyStoriesPage())),
        color: primaryColor,
        height: 55.0,
        minWidth: 300.0,
        child: Text(
          "Add Image",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  static List getMyStoryImageAddCards() {
    List list = List.generate(5, (i) {
      return "Item ${i + 1}";
    });
    return list;
  }
}

class GetClipper extends CustomClipper<Path> {
  @override
  // Path getClip(Size size) {
  //   var path = Path();
  //   path.lineTo(0.0, size.height * 0.6);

  //   path.lineTo(size.width + 500, 0.6);
  //   path.close();
  //   return path;
  // }

  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartingPoint = Offset(0.0, size.height*0.7);
    Offset curveEndPoint = Offset(size.width + 500, 0.7,);
    path.lineTo(curveStartingPoint.dx + 0.0, curveStartingPoint.dy + 6 );
    path.quadraticBezierTo(size.width * -0.7, size.height * 0.7,
        curveEndPoint.dx + 300, curveEndPoint.dy + 0.7);
    path.quadraticBezierTo(size.width * 0.6, size.height * 0.7,
        curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width + 500,  0.6);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
