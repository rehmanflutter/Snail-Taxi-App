import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/Screens/Booking/PaymentOptions/paymentOption.dart';
import 'package:snali/View/custams.dart';

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 58,
                ),
                RowBackCustam(context, 'Call'),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 110,
            left: 15,
            right: 15,
            child: Stack(
              children: [
                Container(
                  height: 470,
                  width: 325,
                  //s  color: Btncol,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 456,
                    width: 325,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(57),
                        //  / color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage('images/Group 40070.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  right: 30,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        image: DecorationImage(
                            image: AssetImage('images/profiePic.png'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: CustamContainer(
                    hight: 33,
                    wigth: 35,
                    circular: 17,
                    col: OffBtn,
                    child: Icon(Icons.alt_route),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 101,
              width: 375,
              decoration: BoxDecoration(
                //color: Btncol,
                image: DecorationImage(
                    image: AssetImage('images/Background (1).png'),
                    fit: BoxFit.fill),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustamContainer(
                        hight: 50,
                        wigth: 50,
                        col: OffBtn,
                        circular: 20,
                        child: Icon(Icons.volume_off_outlined),
                      ),
                      CustamContainer(
                        hight: 80,
                        wigth: 80,
                        col: Colors.red.shade200,
                        circular: 40,
                        child: Icon(
                          Icons.call,
                          color: bacgroundcol,
                        ),
                      ),
                      CustamContainer(
                        hight: 50,
                        wigth: 50,
                        col: OffBtn,
                        circular: 20,
                        child: Icon(Icons.video_call),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
