import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/BookingControler/paymentControler.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/Screens/Booking/PaymentOptions/online.dart';
import 'package:snali/View/custams.dart';

class PayoutOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controlercls = Provider.of<PAymentControler>(context, listen: false);
    return Scaffold(
        backgroundColor: Color(0xfff2f3f7),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 66,
              ),
              RowBackCustam(context, 'Payout'),
              SizedBox(
                height: 41,
              ),
              Stack(
                children: [
                  Container(
                    height: 84,
                    width: 325,
                    //  color: Colors.amber,
                  ),
                  CustamContainer(
                    hight: 70,
                    wigth: 325,
                    depth: 6,
                    circular: 30,
                    col: Colors.white,
                  ),
                  Positioned(
                    bottom: 5,
                    left: 143,
                    child: Transform.rotate(
                      angle: 45 * 3.14 / 180,
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Consumer<PAymentControler>(
                      builder: (context, value, child) => Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              value.chechfun(0);
                            },
                            child: CustamContainer(
                              hight: 50,
                              wigth: 148,
                              col: value.index == 0
                                  ? Btncol
                                  : Colors.transparent,
                              circular: 20,
                              child: Textcustam(
                                text: 'Online ',
                                weight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              value.chechfun(1);
                            },
                            child: CustamContainer(
                              hight: 50,
                              wigth: 140,
                              col: value.index == 1
                                  ? Btncol
                                  : Colors.transparent,
                              circular: 20,
                              child: Textcustam(
                                text: 'Cash ',
                                weight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Consumer<PAymentControler>(
                  builder: (context, value, child) =>
                      value.index == 0 ? OnlinePayment() : Text('Cash'))
            ],
          ),
        ));
  }
}
