import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/NotificationControler/promotionControler.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/CustamWidget/textfiledcustam.dart';
import 'package:snali/View/custams.dart';

class Mypromotions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler = Provider.of<MypromotionControler>(context, listen: false);
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 220,
                  //  color: Colors.green,
                ),
                Container(
                  height: 193,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Background (2).png'),
                        fit: BoxFit.fill),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 58,
                      ),
                      RowBackCustam(context, 'My promotions')
                    ],
                  ),
                ),
                Positioned(
                  left: 27,
                  right: 27,
                  bottom: 0,
                  child: CustamContainer(
                    hight: 60,
                    wigth: 321,
                    circular: 20,
                    col: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SimpleTextfiled(
                        hinttext: 'Enter your promotion cod',
                        lasticon: CustamContainer(
                          hight: 30,
                          wigth: 30,
                          col: Btncol,
                          circular: 15,
                          child: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Textcustam(text: 'Today'),
                  Container(
                    height: 480,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15),

                          //   add to click

                          //

                          //
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/MyWallet');
                            },
                            child: CustamContainer(
                              hight: 117,
                              wigth: 320,
                              col: Colors.white,
                              circular: 30,
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0,
                                      right: 15.0,
                                      bottom: 20,
                                      top: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('images/Coupon-Icon.png'),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 172,
                                            child: Textcustam(
                                              text: controler.title[index],
                                              weight: FontWeight.w600,
                                            ),
                                          ),
                                          Textcustam(
                                              text: controler.subtitle[index]),
                                        ],
                                      ),
                                      Icon(Icons.chevron_right_rounded)
                                    ],
                                  )),
                            ),
                          ),
                        );
                      },
                      itemCount: 3,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
