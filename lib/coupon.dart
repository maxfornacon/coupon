class Coupon {
  final int index;
  final CouponCategory category;
  final String name;
  final CouponValueType couponValueType;
  final double value;
  final DateTime startDate;
  final DateTime expDate;
  final String storageLocation;
  final String description;
  final int backColor;

  Coupon(
    this.index,
    this.category,
    this.name,
    this.couponValueType,
    this.value,
    this.startDate,
    this.expDate,
    this.storageLocation,
    this.description,
    this.backColor,
  );
}

enum CouponValueType {
  price,
  percent,
  undefined,
}

enum CouponCategory {
  food,
  clothing,
  misc,
}