import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/NotificationControler/todayNotificagtion.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/CustamWidget/textfiledcustam.dart';
import 'package:snali/View/custams.dart';

class NotificationShowClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler = Provider.of<Notificationsee>(context, listen: false);
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
                      RowBackCustam(context, 'Notifications')
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
                        hinttext: 'Search Notifications ...',
                        starticon: Icon(Icons.search),
                        lasticon: CustamContainer(
                          hight: 30,
                          wigth: 30,
                          col: Btncol,
                          circular: 15,
                          child: Icon(Icons.filter_list),
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
                              Navigator.pushNamed(context, '/FaqClass');
                            },
                            child: CustamContainer(
                              hight: 117,
                              wigth: 320,
                              col: Colors.white,
                              circular: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(controler
                                        .notificationlist[index].image),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Textcustam(
                                          text: controler
                                              .notificationlist[index].title,
                                          weight: FontWeight.w600,
                                          size: 16,
                                        ),
                                        Text(
                                          controler
                                              .notificationlist[index].subtitle,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.more_time_rounded,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            Textcustam(
                                              text: controler
                                                  .notificationlist[index].time,
                                              col: Colors.grey,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 20,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: 4,
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
