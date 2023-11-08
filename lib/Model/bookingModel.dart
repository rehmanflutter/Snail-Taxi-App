import 'package:flutter/cupertino.dart';

class BookingModel {
  final String title;
  final String subtitle;
  final String price;
  final String subprice;
  final IconData icon;
  BookingModel(
      {required this.icon,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.subprice});
}
