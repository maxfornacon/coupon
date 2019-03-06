import 'package:coupon/coupon.dart';
import 'package:coupon/main_list_item.dart';
import 'package:flutter/material.dart';

const colorRed = 0xFFE3696B;
const colorBlue = 0xFF5EBEDB;
const colorBlack = 0xFF7f7272;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demon',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final coupons = List<Coupon>.generate(
    20,
    (i) => Coupon(
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
        title: Text(widget.title),
      ),
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
      ),
    );
  }
}
