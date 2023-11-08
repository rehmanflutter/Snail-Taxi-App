import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/CustamWidget/textfiledcustam.dart';
import 'package:snali/View/custams.dart';

class RideHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 58,
            ),
            RowBackCustam(context, 'Ride History'),
            SizedBox(
              height: 40,
            ),
            Image.asset('images/gift.png'),
            SizedBox(
              height: 10,
            ),
            Textcustam(
              text: 'Invite Friends',
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
                  text:
                      'When your frinds sign up with your link you’ll both get \$20 charge'),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 62,
              width: 289,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: Textfiledcustam(
                starticon: Icon(Icons.link_rounded),
                hinttext: 'snail.io/s5d25',
                lasticon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustamContainer(
                    hight: 42,
                    wigth: 42,
                    col: OffBtn,
                    circular: 15,
                    child: Icon(Icons.book_online_outlined),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RoundButton(
                title: 'Invite Friends',
                fun: () {
                  Navigator.pushNamed(context, '/InviteFriendsReward');
                },
                wigth: 200)
          ],
        ),
      ),
    );
  }
}
