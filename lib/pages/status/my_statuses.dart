import 'dart:ui';

import 'package:ally_ui/utils/ally_collors.dart';
import 'package:flutter/material.dart';

import 'my_stories.dart';

class MyStatusesPage extends StatefulWidget {
  @override
  _MyStatusesPageState createState() => _MyStatusesPageState();
}

class _MyStatusesPageState extends State<MyStatusesPage> {
  List items = getDummyList();
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

        child: Stack(
          children: <Widget>[
            ClipPath(
            child: Container(
              color: primaryColor,
            ),
            clipper: GetClipper(),

          )
,            Container(
                color: primaryColor,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: <Widget>[
                          // Positioned(
                          //   left: -5,
                          //   top: -10,
                          //   child: FloatingActionButton(
                          //     mini: true,
                          //     child: Icon(Icons.add),
                          //     onPressed: () {},
                          //   ),
                          // ),
                          Card(
                            elevation: 5,
                            child: Container(
                              height: 150.0,
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
                                            image: AssetImage(
                                                "assets/images/bble1.jpg"))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    })),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: addStatusBottomNavBar(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static List getDummyList() {
    List list = List.generate(5, (i) {
      return "Item ${i + 1}";
    });
    return list;
  }
}

Widget addStatusBottomNavBar(BuildContext context) {
  return Container(
    child: MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyStoriesPage())),
      color: secondaryColor,
      height: 55.0,
      minWidth: 300.0,
      child: Text(
        "Add Image",
        style: TextStyle(fontSize: 20),
      ),
    ),
  );
}
class GetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size){
    var path = Path();
    path.lineTo(0.9, size.height * 0.9);
    
    path.lineTo(size.width + 130, 0.9);
    path.close();
    return path;
    
  }
//   Path getClip(Size size) {
//     Path path = Path();
//     Offset curveStartingPoint = Offset(0, 30);
//     Offset curveEndPoint = Offset(size.width, size.height * 0.9);
//     path.lineTo(curveStartingPoint.dx -5, curveStartingPoint.dy );
//     path.quadraticBezierTo(size.width * 1.9, size.height * 0.96,
//         curveEndPoint.dx + 130, curveEndPoint.dy + 10);
//     path.quadraticBezierTo(size.width * 0.99, size.height * 0.99,
//         curveEndPoint.dx, curveEndPoint.dy);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}