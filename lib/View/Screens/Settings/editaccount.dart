import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/textfiledcustam.dart';
import 'package:snali/View/custams.dart';

class EditAccount extends StatelessWidget {
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
            RowBackCustam(context, 'Edit Account'),
            SizedBox(
              height: 90,
            ),
            Stack(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      border: Border.all(color: bacgroundcol),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('images/profiePic.png'),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  right: 10,
                  bottom: 10,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt_sharp,
                        color: Colors.white,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 60,
              width: 289,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: Textfiledcustam(
                hinttext: 'Full Name',
                starticon: Icon(Icons.person),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: 289,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: Textfiledcustam(
                hinttext: 'e-mail Address',
                starticon: Icon(Icons.alternate_email_rounded),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: 289,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: Colors.white),
              child: Textfiledcustam(
                hinttext: 'Password ...',
                starticon: Icon(Icons.security),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            RoundButton(
                title: 'Save',
                fun: () {
                  Navigator.pop(context);
                },
                wigth: 200),
          ],
        ),
      ),
    );
  }
}
