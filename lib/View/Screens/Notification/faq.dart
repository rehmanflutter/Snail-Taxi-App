import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/NotificationControler/faqcontroler.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class FaqClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler = Provider.of<FaqControlers>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 58,
          ),
          RowBackCustam(context, 'FAQ'),
          SizedBox(
            height: 28,
          ),

          //
          //move nex class

          //
          //
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/Mypromotions');
              },
              child: Image.asset('images/Problem Solving.png')),
          SizedBox(
            height: 33,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Consumer<FaqControlers>(
                    builder: (context, value, child) => Container(
                      width: 324,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Textcustam(
                            text: value.name[index],
                            size: 14,
                            weight: FontWeight.w600,
                          ),
                          subtitle: value.check == true
                              ? CustamContainer(
                                  hight: 70,
                                  wigth: 290,
                                  child: Textcustam(
                                      text:
                                          'Lorem ipsum dolor sit  consectetur adipiscing elit. Integer pretium elit id mollis ornare. '),
                                )
                              : SizedBox(),
                          trailing: CustamContainer(
                            hight: 40,
                            wigth: 39,
                            col: OffBtn,
                            depth: 0,
                            circular: 15,
                            child: Center(
                              child: IconButton(
                                  onPressed: () {
                                    value.checkfun();
                                  },
                                  icon: Icon(
                                    Icons.keyboard_arrow_up_outlined,
                                    //    size: 14,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
