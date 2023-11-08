import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/BookingControler/selectAddresscon.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/CustamWidget/textfiledcustam.dart';
import 'package:snali/View/custams.dart';

class FavoritePlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controlerss =
        Provider.of<SelectAddressControler>(context, listen: false);
    return Scaffold(
      backgroundColor: bacgroundcol,
      body: SingleChildScrollView(
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
                        )),
                  ),
                ),
                Textcustam(
                  text: 'Favorite Place',
                  size: 16,
                  weight: FontWeight.w400,
                ),
                SizedBox()
              ],
            ),
            SizedBox(
              height: 77,
            ),
            Image.asset(
              'images/World Connection.png',
              width: 200,
              height: 150,
            ),
            SizedBox(
              height: 37,
            ),
            Textfiledcustam(
              starticon: Icon(
                Icons.push_pin_outlined,
                color: Colors.grey,
              ),
              labeltext: 'Place Name',
            ),
            SizedBox(
              height: 15,
            ),
            Textfiledcustam(
              lasticon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SimpleContainer(
                  hight: 40,
                  wigth: 40,
                  circular: 15,
                  col: Btncol,
                  child: Icon(Icons.location_searching_rounded),
                ),
              ),
              starticon: Icon(
                Icons.location_on_outlined,
                color: Colors.grey,
              ),
              labeltext: 'Place Address',
            ),
            SizedBox(
              height: 78,
            ),
            RoundButton(
                title: 'Save Place',
                fun: () {
                  Navigator.pushNamed(context, '/BookingDetails');
                },
                wigth: 200),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              width: 245,
              //color: Colors.amber,
              child: Consumer<SelectAddressControler>(
                builder: (context, value, child) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 34,
                      height: 60,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.home,
                            color:
                                value.selectIndex == 1 ? Btncol : Colors.grey,
                          ),
                          Textcustam(
                            text: 'Home',
                            col: value.selectIndex == 1
                                ? Colors.black
                                : Colors.grey,
                            size: 12,
                          ),
                          value.selectIndex == 1
                              ? Divider(
                                  thickness: 3,
                                  color: Btncol,
                                )
                              : Text(' ')
                        ],
                      ),
                    ),
                    Container(
                      width: 34,
                      height: 60,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.work,
                            color:
                                value.selectIndex == 2 ? Btncol : Colors.grey,
                          ),
                          Textcustam(
                            text: 'Work',
                            col: value.selectIndex == 2
                                ? Colors.black
                                : Colors.grey,
                            size: 12,
                          ),
                          value.selectIndex == 2
                              ? Divider(
                                  thickness: 3,
                                  color: Btncol,
                                )
                              : Text(' ')
                        ],
                      ),
                    ),
                    Container(
                      width: 34,
                      height: 60,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color:
                                value.selectIndex == 3 ? Btncol : Colors.grey,
                          ),
                          Textcustam(
                            text: 'Other',
                            col: value.selectIndex == 3
                                ? Colors.black
                                : Colors.grey,
                            size: 12,
                          ),
                          value.selectIndex == 3
                              ? Divider(
                                  thickness: 3,
                                  color: Btncol,
                                )
                              : Text(' ')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
