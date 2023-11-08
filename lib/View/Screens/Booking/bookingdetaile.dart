import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/BookingControler/bookingdetailcontr.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class BookingDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controlerclass = Provider.of<FavoriteAndBookingcon>(context);
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
                height: 66,
              ),
              RowBackCustam(context, 'Chose a trip')
            ],
          ),
        ),
        Positioned(
          top: 230,
          left: 180,
          child: Image.asset(
            'images/ic_pick.png',
          ),
        ),
        Positioned(
          top: 200,
          left: 170,
          child: Container(
            height: 25,
            width: 57,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Btncol),
            child: Center(child: Text('3 min')),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 439,
            width: 375,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  height: 7,
                ),
                lineConainer(),
                SizedBox(
                  height: 18,
                ),
                Textcustam(
                  text: 'Select car',
                  size: 16,
                  weight: FontWeight.w700,
                ),
                SizedBox(
                  height: 42,
                ),
                Container(
                  height: 135,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Consumer<FavoriteAndBookingcon>(
                          builder: (context, value, child) => GestureDetector(
                            onTap: () {
                              value.checkfunc(index);
                            },
                            child: CustamContainer(
                              hight: 135,
                              wigth: 90,
                              circular: 25,
                              //col: Colors.amber,
                              depth: value.Selectindex == index ? 9 : 0,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Icon(
                                    value.chosetogo[index].icon,
                                    color: value.Selectindex == index
                                        ? Btncol
                                        : Colors.black,
                                  ),
                                  SizedBox(
                                    height: 9,
                                  ),
                                  Textcustam(
                                    text: controlerclass.chosetogo[index].title,
                                    size: 16,
                                    weight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Textcustam(
                                    text: controlerclass
                                        .chosetogo[index].subtitle,
                                    size: 12,
                                    col: Colors.grey,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  CustamContainer(
                                    hight: 44,
                                    wigth: 90,
                                    col: value.Selectindex == index
                                        ? Colors.white
                                        : OffBtn,
                                    circular: 20,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Textcustam(text: '\$'),
                                        Textcustam(
                                          text: controlerclass
                                              .chosetogo[index].price,
                                          size: 24,
                                          weight: FontWeight.w700,
                                        ),
                                        Textcustam(
                                            text: controlerclass
                                                .chosetogo[index].subprice)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: 3,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                controlerclass.Distance(),
                SizedBox(
                  height: 55,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustamContainer(
                      hight: 60,
                      wigth: 60,
                      col: OffBtn,
                      circular: 30,
                      child: Icon(Icons.access_time),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    RoundButton(
                        title: 'Book Now',
                        fun: () {
                          Navigator.pushNamed(context, '/DriverFind');
                        },
                        wigth: 200)
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    )

        //  RowBackCustam,
        );
  }
}
