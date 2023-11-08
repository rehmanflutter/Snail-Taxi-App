import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/HomeControler/pagehomeCon.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler = Provider.of<HomeControler>(context, listen: false);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/Map.png'), fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(
                  height: 59,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          image: DecorationImage(
                              image: AssetImage('images/profiePic.png')),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    CustamContainer(
                      hight: 50,
                      wigth: 124,
                      col: Colors.white,
                      depth: 20,
                      circular: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.wallet),
                          Textcustam(
                            text: '\$29',
                            size: 14,
                            weight: FontWeight.w700,
                          ),
                          CustamContainer(
                            hight: 38,
                            wigth: 38,
                            col: Btncol,
                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.add)),
                          )
                        ],
                      ),
                    ),
                    CustamContainer(
                      hight: 50,
                      wigth: 50,
                      col: Colors.white,
                      depth: 20,
                      circular: 20,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.search)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              top: 176,
              left: 85,
              child: Image.asset(
                'images/car1.png',
              )),
          Positioned(
              top: 190,
              right: 110,
              child: Image.asset(
                'images/car2.png',
              )),
          Positioned(
              top: 313,
              left: 135,
              child: Image.asset(
                'images/Location.png',
              )),
          Positioned(
              //  controler.bottomsheetshow(context);
              bottom: 300,
              right: 44,
              child: InkWell(
                onTap: () {
                  controler.bottomsheetshow(context);
                },
                child: SimpleContainer(
                  hight: 40,
                  wigth: 40,
                  col: Btncol,
                  circular: 15,
                  depth: 10,
                  child: Icon(Icons.location_searching_outlined),
                ),
              )),
          Positioned(
            bottom: 0,
            child: Container(
              height: 283,
              width: 375,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12, // Shadow color
                      offset: Offset(10, 0), // Offset to the bottom
                      blurRadius: 4,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  lineConainer(),
                  SizedBox(
                    height: 27,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Textcustam(
                        text: 'Where to?',
                        weight: FontWeight.w700,
                      ),
                      Textcustam(
                        text: 'Customize',
                        size: 14,
                        col: Colors.grey,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 57,
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                          ),
                          child: Stack(
                            children: [
                              Container(
                                height: 130,
                                width: 123,
                                //color: Colors.green,
                              ),
                              Positioned(
                                top: 20,
                                child: Container(
                                  height: 93,
                                  width: 123,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: OffBtn),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Textcustam(
                                        text: controler.Whertogo[index].title,
                                        weight: FontWeight.w600,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Textcustam(
                                        text:
                                            controler.Whertogo[index].subtitle,
                                        size: 12,
                                        col: Colors.grey,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 1,
                                left: 42,
                                child: Consumer<HomeControler>(
                                  builder: (context, value, child) =>
                                      GestureDetector(
                                    onTap: () {
                                      controler.selectItem(index);
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          color:
                                              controler.selectedIndex == index
                                                  ? Colors.amber
                                                  : Colors.white),
                                      child: controler.Whertogo[index].icondata,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: controler.Whertogo.length,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
