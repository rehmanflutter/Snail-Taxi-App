import 'package:flutter/cupertino.dart';

class PaymentControlerAccound extends ChangeNotifier {
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

  //2nd

  bool _check2 = false;
  bool get check2 => _check2;
  void checfun2(bool value) {
    _check2 = value;
    notifyListeners();
  }
}
