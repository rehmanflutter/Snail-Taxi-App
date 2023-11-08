import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/BookingControler/RatedControler/sendTipcon.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class SendTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controlerss = Provider.of<SendTipConteroler>(context, listen: false);
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
            RowBackCustam(context, 'Send Tip'),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 600,
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
                    Consumer<SendTipConteroler>(
                      builder: (context, value, child) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustamContainer(
                            hight: 40,
                            wigth: 39,
                            col: OffBtn,
                            depth: 0,
                            circular: 15,
                            child: IconButton(
                                onPressed: () {
                                  value.countmin();
                                },
                                icon: Icon(
                                  Icons.minimize_sharp,
                                  //    size: 14,
                                )),
                          ),
                          Textcustam(
                            text: '\$${value.count}.00',
                            weight: FontWeight.w700,
                            size: 32,
                          ),
                          CustamContainer(
                            hight: 40,
                            wigth: 39,
                            col: OffBtn,
                            depth: 0,
                            circular: 15,
                            child: Center(
                              child: IconButton(
                                  onPressed: () {
                                    value.countadd();
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    //    size: 14,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
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

                    // SizedBox(
                    //   height: 1,
                    // ),
                    Container(
                      height: 300,
                      width: 226,
                      // color: Colors.amber,
                      child: GridView.builder(
                        physics:
                            NeverScrollableScrollPhysics(), // Disable scrolling

                        itemBuilder: (context, index) {
                          return Consumer<SendTipConteroler>(
                            builder: (context, value, child) => GestureDetector(
                              onTap: () {
                                value.checkfun(index);
                              },
                              child: Container(
                                height: 62,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: value.selectindex == index
                                      ? OffBtn
                                      : Colors.transparent,
                                ),
                                child: Center(
                                    child: Textcustam(
                                  text: value.keyboard[index],
                                  size: 26,
                                )),
                              ),
                            ),
                          );
                        },
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 40,
                          mainAxisSpacing: 5,
                          //childAspectRatio: 0.75,
                        ),
                        itemCount: controlerss.keyboard.length,
                      ),
                    ),

                    RoundButton(
                        title: 'Send to Joe',
                        fun: () {
                          Navigator.pushNamed(context, '/CustamScrolAppBar');
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
