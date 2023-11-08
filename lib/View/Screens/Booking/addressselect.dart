import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/Screens/Booking/selectaddressContainer.dart';

class AddressSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/Map.png'), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 59,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustamContainer(
                      hight: 40,
                      wigth: 39,
                      col: Colors.white,
                      depth: 20,
                      circular: 15,
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.chevron_left_outlined,
                              //  size: 17,
                            )),
                      ),
                    ),
                    Textcustam(
                      text: 'Select Address',
                      size: 16,
                      weight: FontWeight.w400,
                    ),
                    SizedBox()
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                BottomContainerAddressClass()
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
