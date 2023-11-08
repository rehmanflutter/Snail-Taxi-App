import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/BookingControler/RatedControler/ratedcontroler.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class RatedPayTipeNot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controlercus =
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
              height: 130,
            ),
            Container(
              height: 588,
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
                      text: 'Wow 5 star!',
                      size: 16,
                      weight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      width: 215,
                      child: Textcustam(
                        align: TextAlign.center,
                        text: 'Do you want to ant additional tip for joe smith',
                        size: 14,
                      ),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Container(
                      height: 67,
                      child: Consumer<RatedControlerclass>(
                        builder: (context, value, child) => ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  value.checkpay(index);
                                },
                                child: SimpleContainer(
                                  hight: 66,
                                  circular: 25,
                                  wigth: 66,
                                  shcol: value.selectpay == index
                                      ? Colors.yellow.shade100
                                      : Colors.transparent,
                                  col: value.selectpay == index
                                      ? Btncol
                                      : OffBtn,
                                  depth: value.selectpay == index ? 15 : 0,
                                  child: Textcustam(
                                    text: value.star[index],
                                    size: 16,
                                    weight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: 4,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Container(
                      height: 60,
                      width: 150,
                      child: NeumorphicButton(
                        onPressed: () {},
                        style: NeumorphicStyle(
                          color: OffBtn,
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(20), // Set the border radius
                          ),
                          lightSource: LightSource.bottom,
                          depth: 0,
                        ),
                        child: Center(
                            child: Textcustam(
                          text: 'No, Thanks',
                          //  col: Colors.black54,
                          size: 14,
                          weight: FontWeight.w600,
                          //  col: Colors.,
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RoundButton(
                        title: 'Pay Tip',
                        fun: () {
                          Navigator.pushNamed(context, '/SendTip');
                        },
                        wigth: 150)
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
