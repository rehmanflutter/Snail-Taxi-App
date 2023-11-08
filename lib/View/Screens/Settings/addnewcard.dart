import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/CustamWidget/textfiledcustam.dart';
import 'package:snali/View/custams.dart';

class AddNewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: SingleChildScrollView(
        //  physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 58,
            ),
            RowBackCustam(context, 'Payment'),
            SizedBox(
              height: 25,
            ),
            CustamContainer(
              hight: 630,
              wigth: 374,
              circular: 30,
              col: bacgroundcol,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  lineConainer(),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('images/Add Card.png'),
                  SizedBox(
                    height: 20,
                  ),
                  Textcustam(
                    text: 'Add New Card',
                    weight: FontWeight.w700,
                  ),
                  Textcustam(
                    text: 'Add your debit/creadit card',
                    size: 12,
                    col: Colors.grey,
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Textfiledcustam(
                    starticon: Icon(Icons.person_outlined),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Textfiledcustam(
                    starticon: Icon(Icons.person_outlined),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      children: [
                        Expanded(
                          child: Textfiledcs(
                            labeltext: 'Expiry Date',
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Textfiledcs(
                              labeltext: 'Cvv',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  RoundButton(title: 'Add', fun: () {}, wigth: 200)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
