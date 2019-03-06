import 'package:coupon/coupon.dart';
import 'package:coupon/coupon_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainListItem extends StatelessWidget {

  final Coupon coupon;
  final IconData icon;
  final String name;
  final String value;
  final DateTime expDate;
  final Color backColor;

  MainListItem(
    this.coupon,
    this.icon,
    this.name,
    this.value,
    this.expDate,
    this.backColor,
  );


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 5.0, bottom: 5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CouponView(coupon: coupon)),
          );
        },
        child: Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(const Radius.circular(10.0)),
            color: backColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Text(
                      value,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      DateFormat('dd.MM.yyyy').format(expDate),
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20.0,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Icon(
                        icon,
                        size: 32.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
