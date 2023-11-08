import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/CustamWidget/textfiledcustam.dart';

class OnlinePayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Textcustam(
            text: '\$25.00',
            size: 32,
            weight: FontWeight.w700,
          ),
          SizedBox(
            height: 41,
          ),
          Textcustam(
            text: 'Payment Method :',
            weight: FontWeight.w600,
          ),
          SizedBox(
            height: 17,
          ),
          CustamContainer(
            hight: 70,
            wigth: 336,
            col: Colors.white,
            circular: 25,
            child: ListTile(
              leading: Icon(Icons.home),
              title: Textcustam(
                text: 'Bank Account',
                size: 14,
                weight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CustamContainer(
            hight: 70,
            wigth: 326,
            circular: 25,
            col: Colors.white,
            child: ListTile(
              leading: Image.asset('images/mastercard.png'),
              title: Textcustam(text: '**** **** **** 2453'),
            ),
          ),
          SizedBox(
            height: 38,
          ),
          Textcustam(
            text: 'Promo Code :',
            size: 14,
            weight: FontWeight.w600,
          ),
          SizedBox(
            height: 18,
          ),
          Container(
            height: 60,
            width: 289,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            child: Textfiledcustam(
              hinttext: 'Promo Code (Optional)',
              starticon: Icon(Icons.filter_frames_outlined),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RoundButton(
              title: 'Proceed to pay',
              fun: () {
                Navigator.pushNamed(context, '/RateDriver');
              },
              wigth: 200)
        ],
      ),
    );
  }
}
