import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class DriverFind extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bacgroundcol,
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
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 2),
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
                  SizedBox(
                    height: 66,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustamContainer(
                        hight: 40,
                        wigth: 39,
                        col: OffBtn,
                        depth: 0,
                        circular: 15,
                        child: Center(
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.chevron_left_outlined,
                                // size: 14,
                              )),
                        ),
                      ),
                      Textcustam(
                        text: 'Searching for Driver',
                        size: 16,
                        weight: FontWeight.w400,
                      ),
                      SizedBox()
                    ],
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  CustamContainer(
                    hight: 50,
                    wigth: 50,
                    col: Btncol,
                    circular: 20,
                    child: Center(child: Image.asset('images/Group (1).png')),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Textcustam(
                    text: 'Searching Ride',
                    size: 16,
                    weight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Textcustam(
                    text: 'It may take some times',
                    size: 14,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 350,
                        //  color: Colors.blue.shade50,
                        width: 375,
                      ),
                      Positioned(
                          top: 10,
                          left: 5,
                          right: 5,
                          child: Image.asset('images/Circles.png')),
                      Positioned(
                        left: 85,
                        top: 0,
                        child: SimpleContainer(
                          hight: 67,
                          depth: 15,
                          wigth: 196,
                          circular: 30,
                          col: Colors.white,
                          child: ListTile(
                            leading: Image.asset('images/Avatar.png'),
                            title: Textcustam(
                              text: 'Joe Smith',
                              size: 16,
                              weight: FontWeight.w700,
                            ),
                            subtitle: Textcustam(
                              text: 'Driver 200 m',
                              size: 12,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 173,
                          left: 60,
                          child: Image.asset('images/Driver (1).png')),
                      Positioned(
                          bottom: 70,
                          right: 70,
                          top: 75,
                          left: 70,
                          child: Image.asset('images/car_top (2).png')),
                      Positioned(
                          bottom: 70,
                          right: 20,
                          child: Image.asset('images/Driver.png'))
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/ArrivingClass');
                    },
                    child: CustamContainer(
                      hight: 60,
                      wigth: 223,
                      circular: 30,
                      depth: 1,
                      col: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustamContainer(
                              hight: 40,
                              wigth: 40,
                              circular: 20,
                              col: OffBtn,
                              depth: 0,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/CancelTrip');
                                },
                                icon: Icon(
                                  Icons.clear_outlined,
                                  color: Colors.grey.shade400,
                                ),
                              )),
                          Textcustam(
                            text: '      >> Slide To Cancel ',
                            weight: FontWeight.w500,
                            col: Colors.grey.shade400,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
