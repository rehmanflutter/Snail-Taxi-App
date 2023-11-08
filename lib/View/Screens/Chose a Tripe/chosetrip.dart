import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/choseTripe/chosetripmodel.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class ChoseTripClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controlr = Provider.of<ChoseTripControler>(context, listen: false);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/Map (1).png'))),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: Container(
                height: double.infinity,
                width: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/Background.png'),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 76,
                      ),
                      ListTile(
                        leading: Stack(
                          children: [
                            Container(
                              height: 75,
                              width: 65,
                              //  color: Colors.amber,
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  image: DecorationImage(
                                      image: AssetImage('images/profiePic.png'),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Positioned(
                              top: -2,
                              right: -1,
                              child: CustamContainer(
                                hight: 25,
                                wigth: 25,
                                circular: 15,
                                col: OffBtn,
                                child:
                                    Icon(Icons.drive_file_rename_outline_sharp),
                              ),
                            )
                          ],
                        ),
                        title: Textcustam(
                          text: 'Alex Hales',
                          size: 18,
                          weight: FontWeight.w700,
                        ),
                        subtitle: Textcustam(text: '+46 16 755 7287'),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      ListTile(
                        title: CustamContainer(
                          hight: 48,
                          wigth: 139,
                          col: Colors.red.shade100,
                          circular: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.wallet,
                                size: 30,
                              ),
                              Textcustam(
                                text: 'Wallet',
                                size: 16,
                              ),
                              CustamContainer(
                                hight: 36,
                                wigth: 57,
                                col: Btncol,
                                child: Textcustam(
                                  text: '\$29',
                                  weight: FontWeight.w700,
                                  size: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      Container(
                        height: 300,
                        // color: Colors.amber,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                ListTile(
                                  leading: CustamContainer(
                                    hight: 30,
                                    wigth: 30,
                                    circular: 15,
                                    col: Colors.pink.shade50,
                                    child: Image.asset(
                                      controlr.listss[index].image,
                                      width: 20,
                                    ),
                                  ),
                                  title: Textcustam(
                                      text: controlr.listss[index].title),
                                  trailing: Icon(Icons.arrow_forward_ios),
                                ),
                                Divider()
                              ],
                            );
                          },
                          itemCount: 5,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 145,
              right: 24,
              child: CustamContainer(
                hight: 50,
                wigth: 50,
                col: OffBtn,
                circular: 25,
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/CustamScrolAppBar');
                    },
                    icon: Icon(
                      Icons.close_outlined,
                      color: Colors.black38,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
