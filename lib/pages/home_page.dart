import 'package:coupon/coupon.dart';
import 'package:coupon/main_list_item.dart';
import 'package:coupon/menu/slide_menu.dart';
import "package:flutter/material.dart";

const colorRed = 0xFFE3696B;
const colorBlue = 0xFF5EBEDB;
const colorBlack = 0xFF7f7272;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final coupons = List<Coupon>.generate(
    20,
      (i) =>
      Coupon(
        i,
        Icons.shopping_cart,
        'Coupon $i',
        '25€',
        DateTime(2019, 7, 23),
      )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coupon Messi"),
      ),
      drawer: SlideMenu(),
      body: ListView.builder(
        itemCount: coupons.length,
        itemBuilder: (context, index) {
          return MainListItem(
            coupons[index],
            coupons[index].icon,
            coupons[index].name,
            coupons[index].value,
            coupons[index].expDate,
            Color(
              (index % 3 == 0)
                ? colorRed
                : (index % 3 == 1) ? colorBlue : colorBlack
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      )
    );
  }
}