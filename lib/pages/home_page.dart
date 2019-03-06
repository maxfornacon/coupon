import 'package:coupon/menu/slide_menu.dart';
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Coupon Messi"),
    ),
    drawer: SlideMenu(),
    body: Center(
      child: Column(),
    ),
  );
}
}