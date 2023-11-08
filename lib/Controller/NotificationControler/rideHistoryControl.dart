import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class RideHistoryControlers extends ChangeNotifier {
  int _SelectIndex = 0;
  int get SelectIndex => _SelectIndex;
  void SelectFun(int index) {
    _SelectIndex = index;
    notifyListeners();
  }

  bool _check = false;
  bool get check => _check;
  void checfun(bool value) {
    _check = value;
    notifyListeners();
  }

  Widget completlist() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 19,
        ),
        Container(
          height: 180,
          width: 244,
          //  color: Colors.blue.shade50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 46,
                  ),
                  Textcustam(
                    text: 'Pickup point',
                    size: 14,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.circle_outlined,
                    color: Btncol,
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  Container(
                      height: 28,
                      width: 193,
                      //  color: Colors.amber,
                      child: Textcustam(
                        text: 'Bisupara, Bashtola 410',
                        weight: FontWeight.w600,
                      ))
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 69,
                    //  color: Colors.amber,
                    child: VerticalDivider(
                      color: OffBtn,
                      thickness: 2,
                      // indent:
                      //     20, // Adjust the space to the left of the divider
                      // endIndent:
                      //     20, // Adjust the space to the right of the divider
                    ),
                  ),
                  Expanded(
                    child: DottedLine(
                      dashColor: Colors.grey.shade400,
                    ),
                  ),
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: OffBtn,
                      child: Icon(
                        Icons.local_taxi,
                        color: Colors.grey,
                      ))
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Textcustam(text: 'Pick Off'),
                      SizedBox(
                        height: 3,
                      ),
                      Textcustam(
                        text: 'Beza Building, aadis 4586',
                        size: 16,
                        weight: FontWeight.w600,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Center(
          child: Container(
            height: 40,
            width: 260,
            //   color: Colors.amber,
            child: Row(
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
                  width: 10,
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
                  width: 10,
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
                  width: 10,
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
                  width: 10,
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
          ),
        )
      ],
    );
  }
}
