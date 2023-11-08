import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/NotificationControler/rideHistoryControl.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class RideHistoryClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler =
        Provider.of<RideHistoryControlers>(context, listen: false);
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: Column(
        children: [
          SizedBox(
            height: 58,
          ),
          RowBackCustam(context, 'Ride History'),
          SizedBox(
            height: 35,
          ),
          CustamContainer(
            hight: 70,
            wigth: 325,
            col: bacgroundcol,
            circular: 30,
            child: Consumer<RideHistoryControlers>(
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
          Consumer<RideHistoryControlers>(
            builder: (context, value, child) => controler.SelectIndex == 0
                ? Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 15.0, left: 25, right: 25),

                          //

                          //

                          ///Move to next Class
                          ///
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, '/DriverdetailsClass');
                            },
                            child: CustamContainer(
                              hight: 274,
                              wigth: 326,
                              circular: 30,
                              col: Colors.white,
                              child: controler.completlist(),
                            ),
                          ),
                        );
                      },
                      itemCount: 2,
                    ),
                  )
                : Center(child: Textcustam(text: 'Canceled Not Show')),
          )
        ],
      ),
    );
  }
}
