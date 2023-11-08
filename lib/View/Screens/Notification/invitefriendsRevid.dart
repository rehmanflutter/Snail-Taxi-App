import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class InviteFriendsReward extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: Column(
        children: [
          SizedBox(
            height: 58,
          ),
          RowBackCustam(context, 'Reward'),
          SizedBox(
            height: 40,
          ),
          Image.asset('images/Music_Two.png'),
          SizedBox(
            height: 10,
          ),
          Textcustam(
            text: 'congratulation',
            size: 18,
            weight: FontWeight.w700,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 270,
            child: Textcustam(
                align: TextAlign.center,
                text: 'You received an award through your friend membership!'),
          ),
          SizedBox(
            height: 51,
          ),
          RoundButton(
              title: 'Recive \$20',
              fun: () {
                Navigator.pushNamed(context, '/RideHistoryClass');
              },
              wigth: 150)
        ],
      ),
    );
  }
}
