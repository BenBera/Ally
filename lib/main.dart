import 'package:ally_ui/pages/home/chatmaincontainer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ally App',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: ChatContainePage()
    );
  }
}

