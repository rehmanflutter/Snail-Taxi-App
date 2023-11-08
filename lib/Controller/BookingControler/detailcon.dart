import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class DetailsControler extends ChangeNotifier {
  Widget Driver() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 52,
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 60,
                    width: 70,
                    //  color: Colors.amber,
                  ),
                  Image.asset('images/Avatar.png'),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset('images/Avatar (1).png'))
                ],
              ),
              SizedBox(
                width: 6,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Textcustam(
                    text: 'Joe Smith',
                    size: 16,
                    weight: FontWeight.w700,
                  ),
                  Textcustam(
                    text: 'Skoda Octavia.',
                    size: 14,
                    weight: FontWeight.w400,
                    col: Colors.black54,
                  ),
                ],
              ),
            ],
          ),
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Textcustam(text: '4.3 ')
              ],
            ),
            SizedBox(
              height: 13,
            ),
            CustamContainer(
              hight: 26,
              wigth: 90,
              col: OffBtn,
              circular: 20,
              child: Textcustam(
                text: '22 A 228 10',
                col: Colors.black54,
                weight: FontWeight.w600,
              ),
            )
          ],
        ),
        // ListTile(
        //   leading:   title:
        //   // subtitle:
        //   trailing:
        // ),
      ],
    );
  }
}
