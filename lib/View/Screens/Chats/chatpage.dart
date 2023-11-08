import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/ChatControler/chatPageControl.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/CustamWidget/textfiledcustam.dart';
import 'package:snali/View/custams.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler = Provider.of<ChatControl>(context, listen: false);
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: Column(
        children: [
          Container(
            height: 137,
            width: 375,
            decoration: BoxDecoration(
                color: bacgroundcol,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: SafeArea(
              child: ListTile(
                leading: Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          //color: Btncol,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('images/Avatar.png'),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CustamContainer(
                        hight: 11,
                        wigth: 11,
                        col: Colors.green,
                        circular: 5,
                      ),
                    )
                  ],
                ),
                title: Textcustam(
                  text: 'Joe Smith',
                  size: 16,
                  weight: FontWeight.w700,
                ),
                subtitle: Textcustam(
                  text: 'Online',
                  size: 12,
                ),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              int a = 0;
              a++;
              return Column(
                children: [
                  a % 2 == 0
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10.0, left: 15, right: 15),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            //color: Btncol,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'images/Avatar.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      Textcustam(
                                        text: '01:10 Am',
                                        size: 10,
                                        col: Colors.grey,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Textcustam(
                                          text: controler.message[index]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 10.0, left: 15, right: 15),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Btncol,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),
                                            topLeft: Radius.circular(20))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Textcustam(
                                          text: controler.message[index]),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            //color: Btncol,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'images/profiePic.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      Textcustam(
                                        text: '01:10 Am',
                                        size: 10,
                                        col: Colors.grey,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                ],
              );
            },
            itemCount: controler.message.length,
          )),
          CustamContainer(
            wigth: 318,
            hight: 62,
            col: Colors.white,
            circular: 30,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<ChatControl>(
                builder: (context, value, child) => Row(
                  children: [
                    CustamContainer(
                      hight: 30,
                      wigth: 30,
                      col: OffBtn,
                      circular: 15,
                      child: Icon(
                        Icons.emoji_emotions,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: SimpleTextfiled(
                        controller: controler.chattype,
                        hinttext: 'Hmm thats weird',
                      ),
                    ),
                    controler.chattype.text == ''
                        ? Icon(Icons.mic)
                        : SimpleContainer(
                            hight: 42,
                            wigth: 60,
                            col: Btncol,
                            circular: 25,
                            depth: 20,
                            shcol: Colors.yellow.shade50,
                            child: Icon(Icons.near_me_outlined),
                          ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
