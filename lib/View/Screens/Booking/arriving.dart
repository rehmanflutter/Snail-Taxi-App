import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/BookingControler/detailcon.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class ArrivingClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Controlercla = Provider.of<DetailsControler>(context, listen: false);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/Map (1).png'), fit: BoxFit.fill),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 66,
                  ),
                  RowBackCustam(context, 'Arriving'),
                  SizedBox(
                    height: 7,
                  ),
                  SizedBox(
                    height: 27,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 350,
            right: 20,
            child: CustamContainer(
              hight: 40,
              wigth: 40,
              circular: 15,
              col: Btncol,
              child: Icon(Icons.location_searching_outlined),
            ),
          ),
          Positioned(
            top: 100,
            right: 60,
            child: Container(
              height: 229,
              width: 223,
              decoration: BoxDecoration(
                // color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage('images/Your-Place.png'),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 20,
            right: 20,
            child: CustamContainer(
              hight: 286,
              wigth: 326,
              col: Colors.white,
              circular: 30,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    SizedBox(
                      height: 22,
                    ),
                    lineConainer(),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Textcustam(
                          text: 'Arriving',
                          size: 16,
                          weight: FontWeight.w700,
                        ),
                        Textcustam(
                          text: '5 min',
                          col: Colors.grey.shade400,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Controlercla.Driver(),
                    SizedBox(
                      height: 48,
                    ),
                    CustamContainer(
                      hight: 60,
                      wigth: 212,
                      // col: Colors.blue.shade100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, '/DetailsDriverIsComing');
                            },
                            child: CustamContainer(
                              hight: 60,
                              wigth: 60,
                              circular: 22,
                              col: OffBtn,
                              child: Icon(Icons.clear_outlined),
                            ),
                          ),

                          // Go to chat

                          //
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/ChatPage');
                            },
                            child: CustamContainer(
                              hight: 60,
                              wigth: 60,
                              circular: 22,
                              col: Btncol,
                              child: Icon(Icons.pie_chart_outline),
                            ),
                          ),

                          // Go to Call
                          //

                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/Call');
                            },
                            child: CustamContainer(
                              hight: 60,
                              wigth: 60,
                              circular: 22,
                              col: Btncol,
                              child: Icon(Icons.call),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
