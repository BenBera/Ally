// import 'package:flutter/material.dart';

// class StatusContainerPage extends StatefulWidget {
//   @override
//   _StatusContainerPageState createState() => _StatusContainerPageState();
// }

// var cardAspectRatio = 12.0 / 16.0;
// var widgetAspectRatio = cardAspectRatio * 1.2;

// class _StatusContainerPageState extends State<StatusContainerPage> {
//   var currentPage = images.length - 1.0;
//   @override
//   Widget build(BuildContext context) {
//     PageController controller = PageController(initialPage: images.length - 1);
//     controller.addListener(() {
//       setState(() {
//         currentPage = controller.page;
//       });
//     });
//     return Container(
//       decoration: BoxDecoration(
//           gradient: LinearGradient(colors: [
//         Color(0xFF1b1e44),
//         Color(0xFF2d3447),
//       ],
//       begin: Alignment.bottomCenter
//       )),
//     );
//   }
// }
