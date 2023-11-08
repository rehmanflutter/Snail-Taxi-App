import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class RateDriver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              height: 35,
            ),
            Container(
              height: 615,
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
                      text: 'Thank you!',
                      size: 16,
                      weight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Textcustam(
                      text: 'Please rate your trip',
                      size: 14,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 3,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                        height: 177,
                        width: 289,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 29,
                              ),
                              Textcustam(
                                text: 'Hey Joe!',
                                size: 16,
                                weight: FontWeight.w600,
                              ),
                              TextField(
                                maxLines: 3,
                                minLines: 1,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Write your message here ...'),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 34,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 23,
                          width: 37,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 5, color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10),
                            // color: Btncol,
                          ),
                          child: Switch(
                            activeColor: Colors.grey.shade300,
                            activeTrackColor: bacgroundcol,
                            inactiveTrackColor: bacgroundcol,

                            value: true,
                            onChanged: (values) {
                              //   value.checfun(values);
                            },
                            //  transform: Matrix4.diagonal3Values(
                            //      0.5, 0.5, 1.0), // Adjust the scaling as needed
                          ),
                        ),
                        Container(
                          width: 170,
                          // color: Colors.amber,
                          child: Textcustam(
                            text:
                                'Share your message with other taxi passenger',
                            size: 14,
                          ),
                        ),
                        Image.asset('images/Avatars.png')
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundButton(
                        title: 'Next',
                        fun: () {
                          Navigator.pushNamed(context, '/RateYourMoode');
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
