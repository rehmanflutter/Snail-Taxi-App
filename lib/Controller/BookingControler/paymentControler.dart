import 'package:flutter/cupertino.dart';

class PAymentControler extends ChangeNotifier {
  int _index = 0;
  int get index => _index;
  void chechfun(int indexs) {
    _index = indexs;
    notifyListeners();
  }
}
