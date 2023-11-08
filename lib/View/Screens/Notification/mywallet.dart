import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/NotificationControler/myWalletControl.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class MyWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler = Provider.of<MyWalletControlers>(context, listen: false);
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: Column(
        children: [
          SizedBox(
            height: 58,
          ),
          RowBackCustam(context, 'My Wallet'),
          SizedBox(
            height: 60,
          ),
          //

          //

          //move next class
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/RideHistory');
            },
            child: CustamContainer(
              hight: 170,
              wigth: 324,
              col: Colors.white,
              circular: 30,
              depth: 2,
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SimpleContainer(
                          hight: 50,
                          wigth: 50,
                          col: Btncol,
                          circular: 20,
                          child: Icon(Icons.filter_frames_outlined),
                          depth: 15,
                          shcol: Colors.yellow.shade50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Textcustam(
                              text: 'Wallet',
                              weight: FontWeight.w600,
                            ),
                            Textcustam(text: 'Defult Payment Method'),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Textcustam(
                      text: '   Balance',
                      size: 10,
                    ),
                    Consumer<MyWalletControlers>(
                      builder: (context, value, child) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textcustam(
                            text: '\$${value.count}.00',
                            size: 24,
                            weight: FontWeight.w600,
                          ),
                          SimpleContainer(
                            hight: 50,
                            wigth: 50,
                            col: Btncol,
                            circular: 20,
                            child: IconButton(
                                onPressed: () {
                                  controler.fun();
                                },
                                icon: Icon(Icons.add)),
                            depth: 10,
                            shcol: Colors.yellow.shade50,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15.0, left: 20, right: 20),
                  child: CustamContainer(
                    hight: 89,
                    wigth: 324,
                    col: Colors.white,
                    circular: 30,
                    child: ListTile(
//

                      /// Go to screen
                      onTap: () {
                        Navigator.pushNamed(context, '/PaymenthistoryCanCom');
                      },
                      leading: CustamContainer(
                          hight: 40,
                          wigth: 40,
                          circular: 20,
                          col: Colors.pink.shade50,
                          child: controler.iconss[index]),
                      title: Textcustam(
                        text: controler.title[index],
                        size: 16,
                        weight: FontWeight.w500,
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
                                    // Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.chevron_right_rounded,
                                    //    size: 14,
                                  )))),
                    ),
                  ),
                );
              },
              itemCount: 3,
            ),
          )
        ],
      ),
    );
  }
}
