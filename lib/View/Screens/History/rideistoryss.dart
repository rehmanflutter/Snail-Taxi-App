import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/History/HistoryappControler.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class HistoryBottomapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler =
        Provider.of<HistoryBottomappControler>(context, listen: false);

    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: Column(
        children: [
          SizedBox(
            height: 58,
          ),
          RowBackCustam(context, 'History'),
          SizedBox(
            height: 35,
          ),
          CustamContainer(
            hight: 70,
            wigth: 325,
            col: Colors.white,
            circular: 30,
            child: Consumer<HistoryBottomappControler>(
              builder: (context, value, child) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      value.SelectFun(0);
                    },
                    child: CustamContainer(
                      hight: 50,
                      wigth: 149,
                      circular: 20,
                      col: value.SelectIndex == 0 ? Btncol : Colors.transparent,
                      child: Textcustam(
                        text: 'List',
                        weight: FontWeight.w600,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      value.SelectFun(1);
                    },
                    child: CustamContainer(
                      hight: 50,
                      wigth: 149,
                      circular: 20,
                      col: value.SelectIndex == 1 ? Btncol : Colors.transparent,
                      child: Textcustam(
                        text: 'Map',
                        weight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Consumer<HistoryBottomappControler>(
            builder: (context, value, child) => controler.SelectIndex == 0
                ? Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Consumer<HistoryBottomappControler>(
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
                                    text: controler.showbox[index].image,
                                    size: 14,
                                    weight: FontWeight.w600,
                                  ),
                                  subtitle: Textcustam(
                                      text: value.showbox[index].title),
                                  trailing: CustamContainer(
                                    hight: 40,
                                    wigth: 39,
                                    col: OffBtn,
                                    depth: 0,
                                    circular: 15,
                                    child: Center(
                                      child: IconButton(
                                          onPressed: () {
                                            // value.checkfun();
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
                : Textcustam(text: 'No Case'),
          )
        ],
      ),
    );
  }
}
