import 'package:coupon/coupon.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CouponView extends StatelessWidget {
  final Coupon coupon;

  CouponView({Key key, @required this.coupon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coupon.name),
      ),
      body: Column(
        children: <Widget>[
          Image.asset('assets/mcgutschein.jpeg'),
          Column(
            children: [
              Row(
                children: <Widget>[
                  Text(
                    'Name: ',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                  Text(
                    '${coupon.name}',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),

              Text(
                'Startdatum: ' + DateFormat('dd.MM.yyyy').format(coupon.expDate),
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              Text(
                'Ablageort: Kloschüssel',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
