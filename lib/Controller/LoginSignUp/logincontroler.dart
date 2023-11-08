import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginControler extends ChangeNotifier {
  int _SelectIndex = 0;
  int get SelectIndex => _SelectIndex;
  void SelectFun(int index) {
    _SelectIndex = index;
    notifyListeners();
  }

  bool _check = false;
  bool get check => _check;
  void checfun(bool value) {
    _check = value;
    notifyListeners();
  }

  Widget containerImage(String image) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            23,
          ),
          border: Border.all(width: 4, color: Colors.grey.shade50)),
      child: Center(child: Image.asset(image)),
    );
  }
}
