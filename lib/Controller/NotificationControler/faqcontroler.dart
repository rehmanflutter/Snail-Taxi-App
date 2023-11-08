import 'package:flutter/cupertino.dart';

class FaqControlers extends ChangeNotifier {
  bool _check = false;
  bool get check => _check;
  void checkfun() {
    if (_check == false)
      _check = true;
    else
      _check = false;

    notifyListeners();
  }

  List name = [
    'Pineapple related questions',
    'Pineapple related questions',
    'System related questions:'
  ];
}
