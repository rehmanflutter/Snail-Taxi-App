import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/SettingControler/accoundControler.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class AccountSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler = Provider.of<AccoundControler>(context, listen: false);
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 58,
            ),
            RowBackCustam(context, 'Account'),
            SizedBox(
              height: 42,
            ),
            CustamContainer(
              hight: 498,
              wigth: 319,
              circular: 33,
              col: bacgroundcol,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, '/EditAccount');
                      },
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            image: DecorationImage(
                                image: AssetImage('images/profiePic.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      title: Textcustam(
                        text: 'Alex Hales',
                        size: 18,
                        weight: FontWeight.w700,
                      ),
                      subtitle: Textcustam(text: '+46 16 755 7287'),
                    ),
                    Textcustam(
                      text: '\t\t\t\tPersonal Information',
                      col: Colors.grey,
                    ),
                    Container(
                      height: 300,
                      //     color: Btncol,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              controler.moveclass[index]));
                                },
                                leading: CustamContainer(
                                  hight: 30,
                                  wigth: 30,
                                  circular: 10,
                                  col: Colors.pink.shade50,
                                  child: Image.asset(
                                    controler.accounds[index].image,
                                    width: 20,
                                  ),
                                ),
                                title: Textcustam(
                                  text: controler.accounds[index].title,
                                  size: 16,
                                  weight: FontWeight.w400,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              Divider()
                            ],
                          );
                        },
                        itemCount: controler.accounds.length,
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: CustamContainer(
                        hight: 30,
                        wigth: 30,
                        circular: 10,
                        col: Colors.pink.shade50,
                        child: Image.asset(
                          'images/Percent-Icon.png',
                          width: 20,
                        ),
                      ),
                      title: Textcustam(
                        text: 'Discount Notifications',
                        size: 16,
                        weight: FontWeight.w400,
                      ),
                      trailing: Container(
                        height: 23,
                        width: 37,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Btncol,
                        ),
                        child: Consumer<AccoundControler>(
                          builder: (context, value, child) => Switch(
                            activeColor: Colors.white,
                            activeTrackColor: Btncol,
                            inactiveTrackColor: Btncol,

                            value: value.check,
                            onChanged: (values) {
                              value.checfun(values);
                            },
                            //  transform: Matrix4.diagonal3Values(
                            //      0.5, 0.5, 1.0), // Adjust the scaling as needed
                          ),
                        ),
                      ),
                    )
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
