import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/CustamWidget/textfiledcustam.dart';
import 'package:snali/View/custams.dart';

class RecoverEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bacgroundcol,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 79,
              ),
              Textcustam(
                text: 'Password',
                size: 32,
                weight: FontWeight.w700,
              ),
              SizedBox(
                height: 8,
              ),
              Textcustam(
                text: 'Recovery',
                size: 16,
                weight: FontWeight.w700,
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                height: 5,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Btncol,
                ),
              ),
              SizedBox(
                height: 36,
              ),
              Center(child: Image.asset('images/Inbox.png')),
              SizedBox(
                height: 42,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 275,
                      child: Textcustam(
                        text:
                            'Please enter your email to recover your password',
                        align: TextAlign.center,
                        size: 16,
                      ),
                    ),
                    SizedBox(
                      height: 47,
                    ),
                    Textfiledcustam(
                      starticon: Icon(Icons.alternate_email_outlined,
                          color: Colors.grey),
                      hinttext: 'e-mail Address',
                    ),
                    SizedBox(
                      height: 41,
                    ),
                    RoundButton(
                        title: 'Send  Link ',
                        fun: () {
                          Navigator.pushNamed(context, '/NewPassword');
                        },
                        wigth: 200)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
