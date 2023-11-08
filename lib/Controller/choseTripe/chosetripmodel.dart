import 'package:flutter/cupertino.dart';
import 'package:snali/Model/choseTrip.dart';

class ChoseTripControler extends ChangeNotifier {
  List<ChoseTripModel> listss = [
    ChoseTripModel(image: 'images/Users-Icon.png', title: 'History'),
    ChoseTripModel(image: 'images/Clock-Icon.png', title: 'Peyment'),
    ChoseTripModel(image: 'images/Car-Icon.png', title: 'Become a Driver'),
    ChoseTripModel(image: 'images/Card-Icon.png', title: 'Settings'),
    ChoseTripModel(image: 'images/Setting-Icon.png', title: 'Invite Friends')
  ];
}
