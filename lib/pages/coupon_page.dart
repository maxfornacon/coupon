import 'package:coupon/coupon.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CouponPage extends StatelessWidget {
  final Coupon coupon;

  CouponPage({Key key, @required this.coupon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coupon.name),
        backgroundColor: Colors.white,
      ),
      body: Container(
        //color: Color(coupon.backColor),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Image.asset(
                'assets/mcgutschein.jpeg',
                height: 300.0,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 230.0, left: 20.0, right: 20.0, bottom: 30.0),
                child: Card(
                  elevation: 5.0,
                  color: Color(coupon.backColor),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Icon(
                            coupon.category == CouponCategory.food
                              ? Icons.fastfood
                              : coupon.category == CouponCategory.clothing
                                ? Icons.accessibility_new
                                : Icons.shopping_cart,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              coupon.name,
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white70,
                              ),
                              textAlign: TextAlign.right,
                            ),
                            Spacer(),
                            Text(
                              coupon.couponValueType == CouponValueType.price
                                  ? NumberFormat.simpleCurrency(locale: 'de').format(coupon.value)
                                  : NumberFormat('##').format(coupon.value) + '%',
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white70,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    DateFormat('dd.MM').format(coupon.startDate),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    DateFormat('yyyy').format(coupon.startDate),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      letterSpacing: 1.0,
                                      color: Colors.white70
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white70,
                              ),
                              Spacer(),
                              Column(
                                children: <Widget>[
                                  Text(
                                    DateFormat('dd.MM').format(coupon.expDate),
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.white
                                    ),
                                  ),
                                  Text(
                                    DateFormat('yyyy').format(coupon.expDate),
                                    style: TextStyle(
                                      fontSize: 26.0,
                                      letterSpacing: 1.0,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          coupon.description,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white70,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Ablageort: ',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                coupon.storageLocation,
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
