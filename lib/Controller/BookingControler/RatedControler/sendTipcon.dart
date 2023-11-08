import 'package:flutter/cupertino.dart';

class SendTipConteroler extends ChangeNotifier {
  List keyboard = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '.', '0', '*'];
  int _count = 25;
  int get count => _count;
  void countadd() {
    _count++;
    notifyListeners();
  }

  void countmin() {
    _count--;
    notifyListeners();
  }

  int _selectindex = 0;
  int get selectindex => _selectindex;
  void checkfun(int indexs) {
    _selectindex = indexs;
    notifyListeners();
  }
}
