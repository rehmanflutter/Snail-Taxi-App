import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/NotificationControler/DriverdetailsControl/Driverdetailcontrol.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class DriverdetailsClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler =
        Provider.of<DriverdetailsControlerClass>(context, listen: false);
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
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
                      RowBackCustam(context, 'Driver details')
                    ],
                  ),
                ),
                Positioned(
                    left: 147,
                    right: 147,
                    bottom: 0,
                    child: Container(
                      height: 70,
                      width: 85,
                      decoration: BoxDecoration(
                          border: Border.all(color: bacgroundcol),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('images/Avatar.png'),
                              fit: BoxFit.cover)),
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Textcustam(
              text: 'Joe Smith',
              size: 16,
              weight: FontWeight.w700,
            ),
            SizedBox(
              height: 21,
            ),
            Stack(
              children: [
                Container(
                  height: 80,
                  width: 197,
                  //  color: Colors.red,
                ),
                Positioned(
                  bottom: 0,
                  child: CustamContainer(
                    hight: 70,
                    wigth: 197,
                    col: Colors.white,
                    circular: 30,
                    child: Textcustam(
                      text: '+46-745-5533 ',
                      weight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 70,
                  right: 70,
                  child: CustamContainer(
                    hight: 23,
                    wigth: 54,
                    col: Color(0xfff5f6fa),
                    child: Textcustam(
                      text: 'Phone ',
                      size: 14,
                      col: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustamContainer(
              hight: 91,
              wigth: 326,
              col: bacgroundcol,
              circular: 30,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star_outline_rounded,
                          color: Colors.grey.shade400,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Textcustam(
                              text: '4.8',
                              size: 12,
                              weight: FontWeight.w600,
                            ),
                            Textcustam(
                              text: ' Point',
                              col: Colors.grey,
                              size: 10,
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Textcustam(
                          text: '|',
                          col: Colors.grey.shade300,
                        ),
                        Textcustam(
                          text: '|',
                          col: Colors.grey.shade300,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.local_taxi,
                          color: Colors.grey.shade400,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Textcustam(
                              text: '126 ',
                              size: 12,
                              weight: FontWeight.w600,
                            ),
                            Textcustam(
                              text: ' Trips',
                              col: Colors.grey,
                              size: 10,
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Textcustam(
                          text: '|',
                          col: Colors.grey.shade300,
                        ),
                        Textcustam(
                          text: '|',
                          col: Colors.grey.shade300,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey.shade400,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Textcustam(
                              text: '3',
                              size: 12,
                              weight: FontWeight.w600,
                            ),
                            Textcustam(
                              text: ' Years',
                              col: Colors.grey,
                              size: 10,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustamContainer(
              circular: 30,
              hight: 270,
              wigth: 326,
              col: bacgroundcol,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Textcustam(text: controler.listdata[index].subTitle),
                        SizedBox(
                          height: 10,
                        ),
                        Textcustam(
                          text: controler.listdata[index].title,
                          size: 16,
                          weight: FontWeight.w600,
                        ),
                        Divider(),
                      ],
                    ),
                  );
                },
                itemCount: controler.listdata.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
