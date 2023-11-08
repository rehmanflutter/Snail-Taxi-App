import 'package:flutter/cupertino.dart';
import 'package:snali/Model/DriverdetailsModel.dart';

class DriverdetailsControlerClass extends ChangeNotifier {
  List<ModelDivider> listdata = [
    ModelDivider(subTitle: 'Member since', title: '2019 05 October'),
    ModelDivider(subTitle: 'Car Model', title: '22 A 228 10'),
    ModelDivider(subTitle: 'Plate number', title: 'HS785K'),
    ModelDivider(subTitle: 'Car Model', title: '22 A 228 10')
  ];
}
