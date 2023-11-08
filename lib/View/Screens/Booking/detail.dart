import 'dart:ui';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/BookingControler/detailcon.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class DetailsDriverIsComing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Controlercla = Provider.of<DetailsControler>(context, listen: false);

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Map (1).png'),
            fit: BoxFit.fill,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white54, // Set the background color to white
              boxShadow: [
                BoxShadow(
                  color: Colors.white24, // Set the shadow color to white
                  blurRadius: 7, // Adjust the blur radius as needed
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 66),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustamContainer(
                        hight: 40,
                        wigth: 39,
                        col: OffBtn,
                        depth: 1,
                        circular: 25,
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.chevron_left_outlined,
                            ),
                          ),
                        ),
                      ),
                      Textcustam(
                        text: 'Driver Is Coming',
                        size: 16,
                        weight: FontWeight.w400,
                      ),
                      SizedBox(width: 30),
                    ],
                  ),
                  SizedBox(height: 80),
                  CustamContainer(
                    hight: 554,
                    wigth: 325,
                    col: Colors.white,
                    circular: 20,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 17,
                          ),
                          lineConainer(),
                          SizedBox(
                            height: 30,
                          ),
                          Controlercla.Driver(),
                          SizedBox(
                            height: 32,
                          ),
                          Container(
                            height: 180,
                            width: 244,
                            //   color: Colors.blue.shade50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 46,
                                    ),
                                    Textcustam(
                                      text: 'Pickup point',
                                      size: 14,
                                      weight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.circle_outlined,
                                      color: Btncol,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                        height: 28,
                                        width: 198,
                                        //    color: Colors.amber,
                                        child: Textcustam(
                                          text: 'Bisupara, Bashtola 410',
                                          weight: FontWeight.w600,
                                        )
                                        //TextField(
                                        //   decoration: InputDecoration(
                                        //       border: InputBorder.none, hintText: '|'),
                                        // ),
                                        )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 24,
                                      height: 69,
                                      //  color: Colors.amber,
                                      child: VerticalDivider(
                                        color: OffBtn,
                                        thickness: 2,
                                      ),
                                    ),
                                    Expanded(
                                      child: DottedLine(
                                        dashColor: Colors.grey.shade400,
                                      ),
                                    ),
                                    CircleAvatar(
                                        radius: 20,
                                        backgroundColor: OffBtn,
                                        child: Icon(
                                          Icons.local_taxi,
                                          color: Colors.grey,
                                        ))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 26,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Textcustam(text: 'Pick Off'),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Textcustam(
                                          text: 'Beza Building, aadis 4586',
                                          size: 16,
                                          weight: FontWeight.w600,
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                indent: 50,
                                endIndent: 10,
                              )),
                              Container(
                                width: 70,
                                height: 24,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(color: OffBtn)),
                                child: Center(
                                  child: Textcustam(
                                    text: 'Price',
                                    col: Colors.grey.shade300,
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Divider(
                                indent: 10,
                                endIndent: 50,
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 26,
                          ),

                          //  Price Of Data
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Textcustam(
                                text: '\$',
                                size: 15,
                                weight: FontWeight.w700,
                                col: Colors.black54,
                              ),
                              Textcustam(
                                text: '8',
                                size: 32,
                                col: Colors.black54,
                                weight: FontWeight.w700,
                              ),
                              Textcustam(
                                  col: Colors.black54,
                                  text: '92',
                                  size: 15,
                                  weight: FontWeight.w700)
                            ],
                          ),
                          SizedBox(
                            height: 30,
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
                                        context, '/PayoutOptions');
                                  },
                                  child: CustamContainer(
                                    hight: 60,
                                    wigth: 60,
                                    circular: 22,
                                    col: OffBtn,
                                    child: Icon(Icons.clear_outlined),
                                  ),
                                ),

                                // Go to Chat
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

                                //

                                //Call Chat

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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
