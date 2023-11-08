import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/SettingControler/paymentaccountcontro.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class PaymentAccoundSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler =
        Provider.of<PaymentControlerAccound>(context, listen: false);
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: Column(
        children: [
          SizedBox(
            height: 58,
          ),
          RowBackCustam(context, 'Payment'),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Textcustam(
                text: 'Select account',
                weight: FontWeight.w600,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/AddNewCard');
                },
                child: SimpleContainer(
                  hight: 40,
                  wigth: 40,
                  circular: 15,
                  shcol: Colors.yellow.shade50,
                  col: Btncol,
                  child: Icon(Icons.add),
                  depth: 15,
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 175,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: SimpleContainer(
                    hight: 170,
                    wigth: 239,
                    depth: 20,
                    col: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.pattern_sharp,
                            size: 35,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Textcustam(
                              text: '****       ****       ****       2453'),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Textcustam(
                                text: 'Berkay Erdinc',
                                weight: FontWeight.w400,
                                size: 14,
                              ),
                              Image.asset('images/Mastercard-Logo.png')
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustamContainer(
            hight: 70,
            wigth: 325,
            col: Colors.white,
            circular: 30,
            child: Consumer<PaymentControlerAccound>(
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
                        text: 'Settings',
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
                        text: 'Transaction',
                        weight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Consumer<PaymentControlerAccound>(
            builder: (context, value, child) => controler.SelectIndex == 0
                ? Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ListView(
                        children: [
                          ListTile(
                            title: Textcustam(
                              text: 'Default Card',
                              weight: FontWeight.w500,
                              size: 16,
                            ),
                            subtitle: Textcustam(
                                text: 'Set this card as your default'),
                            trailing: Container(
                              height: 23,
                              width: 37,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Btncol,
                              ),
                              child: Consumer<PaymentControlerAccound>(
                                builder: (context, value, child) => Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Btncol,
                                  inactiveTrackColor: Btncol,
                                  value: value.check,
                                  onChanged: (values) {
                                    value.checfun(values);
                                  },
                                ),
                              ),
                            ),
                          ),
                          ListTile(
                            title: Textcustam(
                              text: 'Contactless Payment',
                              weight: FontWeight.w500,
                              size: 16,
                            ),
                            subtitle:
                                Textcustam(text: 'Active contactless payment '),
                            trailing: Container(
                              height: 23,
                              width: 37,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey, width: 6),
                              ),
                              child: Consumer<PaymentControlerAccound>(
                                builder: (context, value, child) => Switch(
                                  activeColor: Colors.white,
                                  activeTrackColor: Color(0xfff5f6fa),
                                  inactiveTrackColor: Color(0xfff5f6fa),
                                  value: value.check2,
                                  onChanged: (values) {
                                    value.checfun2(values);
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : Textcustam(text: 'Not show'),
          )
        ],
      ),
    );
  }
}
