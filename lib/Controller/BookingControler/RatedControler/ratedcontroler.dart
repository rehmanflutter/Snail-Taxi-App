import 'package:flutter/cupertino.dart';

class RatedControlerclass extends ChangeNotifier {
  int _selectindex = 0;
  int get selectindex => _selectindex;
  void checkfun(int indexs) {
    _selectindex = indexs;
    notifyListeners();
  }

  List<String> emoje = [
    'images/emjoepics/Amgry.png',
    'images/emjoepics/Cold.png',
    'images/emjoepics/Amgry.png',
    'images/emjoepics/Cry.png',
    'images/emjoepics/Emoji12.png',
    'images/emjoepics/Kissing.png',
    'images/emjoepics/Love.png',
    'images/emjoepics/Mask.png',
    'images/emjoepics/Pocker.png',
    'images/emjoepics/Relaxed.png',
    'images/emjoepics/si.png',
    'images/emjoepics/Tierd.png',
  ];

// Pay tip controler

  List star = ['\$5', '\$10', '\$20', '\$30'];

  int _selectpay = 0;
  int get selectpay => _selectpay;
  void checkpay(int indexs) {
    _selectpay = indexs;
    notifyListeners();
  }
}
