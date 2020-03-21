import 'package:ally_ui/utils/ally_collors.dart';
import 'package:flutter/material.dart';
class MyStatusBackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ClipPath(
      clipper: BottomShapeClipper(),
      child: Container(
        // height: screenHeight * 0.5,
        color: primaryColor,
      ),
    );
  }
}

class BottomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartingPoint = Offset(0.0, size.height * 0.7);
    Offset curveEndPoint = Offset(
      size.width + 500,
      0.7,
    );
    path.lineTo(curveStartingPoint.dx + 0.0, curveStartingPoint.dy + 6);
    path.quadraticBezierTo(size.width * -0.7, size.height * 0.7,
        curveEndPoint.dx + 300, curveEndPoint.dy + 0.7);
    path.quadraticBezierTo(size.width * 0.6, size.height * 0.7,
        curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width + 500, 0.6);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }


}
