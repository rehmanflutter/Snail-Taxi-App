import 'package:flutter/foundation.dart';

class SelectAddressControler extends ChangeNotifier {
  int _index = 0;
  int get selectIndex => _index;
  void checkfun(int index) {
    _index = index;
    notifyListeners();
  }
}
