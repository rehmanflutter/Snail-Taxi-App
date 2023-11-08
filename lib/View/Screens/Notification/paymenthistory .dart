import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/NotificationControler/PaymenthistoryControl.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class PaymenthistoryCanCom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler =
        Provider.of<PaymenthistoryCanComControler>(context, listen: false);
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: Column(
        children: [
          SizedBox(
            height: 58,
          ),
          RowBackCustam(context, 'Payment history '),
          SizedBox(
            height: 35,
          ),
          CustamContainer(
            hight: 70,
            wigth: 325,
            col: bacgroundcol,
            circular: 30,
            child: Consumer<PaymenthistoryCanComControler>(
              builder: (context, value, child) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      value.SelectFun(0);
                    },
                    child: CustamContainer(
                      hight: 50,
                      wigth: 149,
                      circular: 20,
                      col: value.SelectIndex == 0 ? Btncol : Colors.transparent,
                      child: Textcustam(
                        text: 'Complited',
                        weight: FontWeight.w600,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      value.SelectFun(1);
                    },
                    child: CustamContainer(
                      hight: 50,
                      wigth: 149,
                      circular: 20,
                      col: value.SelectIndex == 1 ? Btncol : Colors.transparent,
                      child: Textcustam(
                        text: 'Canceled',
                        weight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Textcustam(
                text: 'This week',
                size: 13,
              ),
              SizedBox()
            ],
          ),

//
//  show Lists
//
          Consumer<PaymenthistoryCanComControler>(
            builder: (context, value, child) => controler.SelectIndex == 0
                ? Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        var item = value.datapay[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 15.0, left: 25, right: 25),
                          child: CustamContainer(
                            hight: 170,
                            wigth: 326,
                            circular: 30,
                            col: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading:
                                        Image.asset(controler.image[index]),
                                    title: Textcustam(
                                      text: 'Berkay Erdinc',
                                      weight: FontWeight.w600,
                                      size: 16,
                                    ),
                                    subtitle:
                                        Textcustam(text: '**** **** **** 2453'),
                                    trailing: Container(
                                      height: 25,
                                      width: 56,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: item == 'Paid'
                                                ? Colors.green
                                                : Colors.red,
                                          )),
                                      child: Center(
                                        child: Textcustam(
                                          text: value.datapay[index],
                                          col: item == 'Paid'
                                              ? Colors.green
                                              : Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 11,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Textcustam(
                                            text: 'Fee',
                                            size: 14,
                                            col: Colors.grey,
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Textcustam(
                                            text: '\$1.42',
                                            weight: FontWeight.w600,
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Textcustam(
                                            text: 'Date ',
                                            col: Colors.grey,
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Textcustam(
                                            text: '12 Aug 2020',
                                            weight: FontWeight.w600,
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Textcustam(
                                            text: 'Total :',
                                            col: Colors.grey,
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Textcustam(
                                            text: '\$25.00',
                                            weight: FontWeight.w600,
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: 3,
                    ),
                  )
                : Center(child: Textcustam(text: 'Canceled Not Show')),
          )
        ],
      ),
    );
  }
}
