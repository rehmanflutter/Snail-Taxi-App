import 'package:flutter/cupertino.dart';
import 'package:snali/Model/choseTrip.dart';

class HistoryBottomappControler extends ChangeNotifier {
  int _SelectIndex = 0;
  int get SelectIndex => _SelectIndex;
  void SelectFun(int index) {
    _SelectIndex = index;
    notifyListeners();
  }

  List<ChoseTripModel> showbox = [
    ChoseTripModel(
        image: '705 Green Summit', title: 'Beza Building, aadis 4586'),
    ChoseTripModel(
        image: '705 Green Summit', title: 'Beza Building, aadis 4586'),
    ChoseTripModel(
        image: '705 Green Summit', title: 'Beza Building, aadis 4586')
  ];
}
