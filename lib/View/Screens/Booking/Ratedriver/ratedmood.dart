import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/BookingControler/RatedControler/ratedcontroler.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class RateYourMoode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controlerss =
        Provider.of<RatedControlerclass>(context, listen: false);
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
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            SizedBox(
              height: 60,
            ),
            RowBackCustam(context, 'Rate Driver'),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 620,
              width: 375,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 22,
                    ),
                    lineConainer(),
                    SizedBox(
                      height: 21,
                    ),
                    Stack(
                      children: [
                        CustamContainer(
                          hight: 87,
                          wigth: 196,
                          // depth: 10,
                          // col: Colors.transparent,
                        ),
                        Positioned(
                          top: 0,
                          child: SimpleContainer(
                            hight: 70,
                            depth: 25,
                            circular: 30,
                            wigth: 196,
                            col: Colors.white,
                          ),
                        ),
                        Positioned(
                          bottom: 6,
                          left: 75,
                          child: Transform.rotate(
                            angle: 45 * 3.14 / 180,
                            child: CustamContainer(
                              hight: 42,
                              wigth: 42,
                              circular: 10,
                              //   depth: 12,
                              col: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 1,
                          right: 5,
                          child: ListTile(
                            leading: Image.asset('images/Avatar.png'),
                            title: Textcustam(
                              text: 'Joe Smith',
                              size: 16,
                              weight: FontWeight.w700,
                            ),
                            //    trailing: Text(' '),
                            subtitle: Textcustam(
                              text: 'Driver',
                              size: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Textcustam(
                      text: 'Whats your mood!',
                      size: 16,
                      weight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Textcustam(
                      text: 'about this trip?',
                      size: 14,
                    ),
                    // SizedBox(
                    //   height: 1,
                    // ),
                    Container(
                      height: 338,
                      width: 226,
                      child: GridView.builder(
                        physics:
                            NeverScrollableScrollPhysics(), // Disable scrolling

                        itemBuilder: (context, index) {
                          return Consumer<RatedControlerclass>(
                            builder: (context, value, child) => GestureDetector(
                              onTap: () {
                                value.checkfun(index);
                              },
                              child: Container(
                                height: 75,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: value.selectindex == index
                                        ? OffBtn
                                        : Colors.transparent,
                                    image: DecorationImage(
                                        image: AssetImage(value.emoje[index]))),
                              ),
                            ),
                          );
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 5,
                          //childAspectRatio: 0.75,
                        ),
                        itemCount: controlerss.emoje.length,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundButton(
                        title: 'Submit',
                        fun: () {
                          Navigator.pushNamed(context, '/RatedPayTipeNot');
                        },
                        wigth: 200)
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
