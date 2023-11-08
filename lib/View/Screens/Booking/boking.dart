import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class Booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Map.png'), fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(
                  height: 59,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          image: DecorationImage(
                              image: AssetImage('images/profiePic.png')),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    CustamContainer(
                      hight: 50,
                      wigth: 124,
                      col: Colors.white,
                      depth: 20,
                      circular: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.wallet),
                          Textcustam(
                            text: '\$29',
                            size: 14,
                            weight: FontWeight.w700,
                          ),
                          CustamContainer(
                            hight: 38,
                            wigth: 38,
                            col: Btncol,
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.add)),
                          )
                        ],
                      ),
                    ),
                    CustamContainer(
                      hight: 50,
                      wigth: 50,
                      col: Colors.white,
                      depth: 20,
                      circular: 20,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search)),
                    ),
                  ],
                ),

                // Container(
                //   color: Colors.green, // Color of the container
                //   height: 100.0, // Adjust the height as needed
                //   child: Align(
                //     alignment: Alignment.bottomCenter, // Align to the bottom
                //     child: FractionallySizedBox(
                //       widthFactor:
                //           0.5, // Center horizontally (adjust as needed)
                //       child: Container(
                //         color: Colors.green, // Color of the inner container
                //         child: Center(
                //           child: Text(
                //             'Hello, World!',
                //             style: TextStyle(color: Colors.white),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
          Positioned(
              top: 240, left: 150, child: Image.asset('images/car_top.png')),
          Positioned(
            top: 210,
            left: 150,
            child: Container(
              height: 25,
              width: 57,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Btncol),
              child: Center(child: Text('3 min')),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 25,
            right: 25,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/AddressSelection');
              },
              child: CustamContainer(
                hight: 255,
                wigth: 325,
                depth: 0,
                col: Colors.white,
                circular: 35,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    lineConainer(),
                    SizedBox(
                      height: 39,
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
                                text: 'Where are you?',
                                size: 14,
                                weight: FontWeight.w400,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.circle_outlined,
                                color: Btncol,
                              ),
                              SizedBox(
                                width: 26,
                              ),
                              Container(
                                  height: 28,
                                  width: 193,
                                  //  color: Colors.amber,
                                  child: Textcustam(text: '|')
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
                                  // indent:
                                  //     20, // Adjust the space to the left of the divider
                                  // endIndent:
                                  //     20, // Adjust the space to the right of the divider
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Textcustam(text: 'Pick Off'),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Textcustam(
                                    text: 'Where you want to go?',
                                    size: 16,
                                    weight: FontWeight.w600,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
