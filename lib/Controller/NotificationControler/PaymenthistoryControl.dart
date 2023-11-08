import 'package:flutter/cupertino.dart';

class PaymenthistoryCanComControler extends ChangeNotifier {
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

  List<String> image = [
    'images/Mastercard-Logo.png',
    'images/Paypal.png',
    'images/Mastercard-Logo.png'
  ];
  List<String> datapay = ['Paid', 'Failed', 'Paid'];
}
