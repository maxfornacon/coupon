import 'package:flutter/material.dart';

class Coupon {
  final int index;
  final IconData icon;
  final String name;
  final String value;
  final DateTime expDate;

  Coupon(
    this.index,
    this.icon,
    this.name,
    this.value,
    this.expDate,
  );
}