import 'package:flutter/material.dart';
import 'package:snali/Model/bookingModel.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';

class FavoriteAndBookingcon extends ChangeNotifier {
  int _selectindex = 1;
  int get Selectindex => _selectindex;

  void checkfunc(int index) {
    _selectindex = index;
    notifyListeners();
  }

  List<BookingModel> chosetogo = [
    BookingModel(
        icon: Icons.motorcycle_outlined,
        title: 'Bike',
        subtitle: '5 nearbie',
        price: '5',
        subprice: '63'),
    BookingModel(
        icon: Icons.electric_car_outlined,
        title: 'Standard',
        subtitle: '2 nearbie',
        price: '8',
        subprice: '92'),
    BookingModel(
        icon: Icons.car_crash_outlined,
        title: 'Permium',
        subtitle: '1 nearbie',
        price: '9',
        subprice: '46'),
  ];

  Widget Distance() {
    return Container(
      height: 50,
      width: 290,
      //   color: Colors.amber,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.electric_meter_outlined,
            color: Colors.grey.shade400,
          ),
          SizedBox(
            width: 8,
          ),
          Textcustam(
            text: '3.1 km',
            size: 12,
            weight: FontWeight.w600,
          ),
          SizedBox(
            width: 18,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Textcustam(
                text: '|',
                col: Colors.grey.shade300,
              ),
              Textcustam(
                text: '|',
                col: Colors.grey.shade300,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.access_time_rounded,
            color: Colors.grey.shade400,
          ),
          SizedBox(
            width: 8,
          ),
          Textcustam(
            text: '8 min',
            size: 12,
            weight: FontWeight.w600,
          ),
          SizedBox(
            width: 18,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Textcustam(
                text: '|',
                col: Colors.grey.shade300,
              ),
              Textcustam(
                text: '|',
                col: Colors.grey.shade300,
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.attach_money_outlined,
            color: Colors.grey.shade400,
          ),
          SizedBox(
            width: 8,
          ),
          Textcustam(
            text: '\$8.92',
            size: 12,
            weight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}

// bookmark_outlined