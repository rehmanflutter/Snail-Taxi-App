import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWalletControlers extends ChangeNotifier {
  int _count = 25;
  int get count => _count;
  void fun() {
    _count++;
    notifyListeners();
  }

  List title = ['Payment Methods', 'Coupon', 'Transactions'];
  List<Widget> iconss = [
    Icon(Icons.payment),
    Icon(Icons.cloud_upload_rounded),
    Icon(Icons.track_changes)
  ];
}
