import 'package:flutter/cupertino.dart';
import 'package:snali/Model/choseTrip.dart';
import 'package:snali/View/Screens/Chose%20a%20Tripe/chosetrip.dart';
import 'package:snali/View/Screens/Home/home.dart';
import 'package:snali/View/Screens/Settings/paymentaccound.dart';

class AccoundControler extends ChangeNotifier {
  List<ChoseTripModel> accounds = [
    ChoseTripModel(image: 'images/Location-Icon.png', title: 'Location'),
    ChoseTripModel(image: 'images/Clock-Icon.png', title: 'Peyment'),
    ChoseTripModel(image: 'images/User-Icon.png', title: 'Inforamtion'),
    ChoseTripModel(image: 'images/Secure-Icon.png', title: 'Security'),
  ];

  List moveclass = [
    HomeScreen(),
    PaymentAccoundSet(),
    ChoseTripClass(),
    Container()
  ];

  bool _check = false;
  bool get check => _check;
  void checfun(bool value) {
    _check = value;
    notifyListeners();
  }
}
