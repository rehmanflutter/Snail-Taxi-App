import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/BookingControler/selectAddresscon.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class BottomContainerAddressClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controlerss =
        Provider.of<SelectAddressControler>(context, listen: false);
    return Container(
      height: 630,
      width: 375,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Column(
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
                            child: //Textcustam(text: '|')
                                TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none, hintText: '|'),
                            ),
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
                            child: DottedLine(dashColor: Colors.grey.shade200),
                          ),
                          CustamContainer(
                              hight: 40,
                              wigth: 40,
                              col: Btncol,
                              depth: 9,
                              circular: 30,
                              child: Icon(
                                Icons.location_searching_rounded,
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
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                controlerss.checkfun(3);
                Navigator.pushNamed(context, '/FavoritePlace');
              },
              leading: Icon(
                Icons.panorama_vertical_select_rounded,
                color: Btncol,
              ),
              title: Textcustam(
                text: 'Saved Places',
                size: 16,
                weight: FontWeight.w600,
              ),
              trailing: CustamContainer(
                hight: 40,
                wigth: 39,
                col: OffBtn,
                depth: 0,
                circular: 15,
                child: Center(
                  child: IconButton(
                      onPressed: () {
                        //   Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 17,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              onTap: () {
                controlerss.checkfun(2);
                Navigator.pushNamed(context, '/FavoritePlace');
              },
              leading: Icon(
                Icons.maps_home_work_outlined,
                //  size: 20,
              ),
              title: Column(
                children: [
                  Row(
                    children: [
                      Textcustam(
                        text: 'Work',
                        size: 16,
                        weight: FontWeight.w700,
                      ),
                      Textcustam(
                        text: '(10 min, 2.9 km)',
                        col: Colors.grey.shade500,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Textcustam(
                    text: 'Studio 08 Jake Stream	',
                    size: 16,
                    col: Colors.grey.shade700,
                  ),
                ],
              ),
              //  subtitle:
              trailing: Icon(
                Icons.edit,
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(
              height: 17,
            ),
            DottedLine(
              dashColor: Colors.grey.shade300,
            ),
            SizedBox(
              height: 17,
            ),
            ListTile(
              onTap: () {
                controlerss.checkfun(1);
                Navigator.pushNamed(context, '/FavoritePlace');
              },
              leading: Icon(
                Icons.home,
                //  size: 20,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Textcustam(
                        text: 'Home ',
                        size: 16,
                        weight: FontWeight.w700,
                      ),
                      Textcustam(
                        text: '(43 min, 25 km)',
                        col: Colors.grey.shade500,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Textcustam(
                    text: '705 Green Summit	',
                    size: 16,
                    col: Colors.grey.shade700,
                  ),
                ],
              ),
              //  subtitle:
              trailing: Icon(
                Icons.edit,
                color: Colors.grey.shade400,
              ),
            ),
            SizedBox(
              height: 30,
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
                      text: 'Recent',
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
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 22,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.grey.shade400,
                ),
                SizedBox(
                  width: 22,
                ),
                Textcustam(
                  text: 'Studio 65Murphy Islands',
                  size: 16,
                  col: Colors.grey.shade500,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 22,
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.grey.shade400,
                ),
                SizedBox(
                  width: 22,
                ),
                Textcustam(
                  text: 'Mexicali Ct 13a',
                  size: 16,
                  col: Colors.grey.shade500,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
