import 'package:coupon/coupon.dart';
import 'package:coupon/main_list_item.dart';
import 'package:coupon/menu/slide_menu.dart';
import "package:flutter/material.dart";

const colorRed = 0xFFE3696B;
const colorBlue = 0xFF5EBEDB;
const colorBlack = 0xFF656669;

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
        i % 3 == 0
          ? CouponCategory.food
          : i % 3 == 1
            ? CouponCategory.clothing
            : CouponCategory.misc,
        'Coupon $i',
        CouponValueType.percent,
        25,
        DateTime(2018, 3, 17),
        DateTime(2019, 7, 23),
        'Spühlkasten',
        'Lorem ipsum dolor amet everyday carry godard kogi, cornhole butcher '
        'quinoa pinterest. Snackwave lyft subway tile fixie, raw denim beard',
        (i % 3 == 0)
          ? colorRed
          : (i % 3 == 1) ? colorBlue : colorBlack,


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
            coupons[index].category == CouponCategory.food
                  ? Icons.fastfood
                  :  coupons[index].category == CouponCategory.clothing
                  ? Icons.accessibility_new
                  : Icons.shopping_cart,
            coupons[index].name,
            coupons[index].value,
            coupons[index].expDate,
            Color(
              coupons[index].backColor,
            ),
            coupons[index].storageLocation,
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