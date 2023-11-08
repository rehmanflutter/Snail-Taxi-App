import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class NotificationsClass extends StatelessWidget {
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
            RowBackCustam(context, 'Notifications'),
            SizedBox(
              height: 57,
            ),
            Image.asset('images/Notification.png'),
            SizedBox(
              height: 50,
            ),
            Textcustam(
              text: 'No  Notification Yet',
              size: 18,
              weight: FontWeight.w700,
            ),
            SizedBox(
              height: 19,
            ),
            Container(
              width: 240,
              child: Textcustam(
                text: 'When you get notificaion, theyll show upِhere',
                align: TextAlign.center,
                size: 16,
              ),
            ),
            SizedBox(
              height: 51,
            ),
            RoundButton(
                title: 'Return',
                fun: () {
                  Navigator.pushNamed(context, '/NotificationShowClass');
                },
                wigth: 150)
          ],
        ),
      ),
    );
  }
}
