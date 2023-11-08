import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class RecoverPassword extends StatelessWidget {
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
                text: 'Find Password',
                size: 32,
                weight: FontWeight.w700,
              ),
              SizedBox(
                height: 8,
              ),
              Textcustam(
                text: 'Options',
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
              Center(child: Image.asset('images/Search.png')),
              SizedBox(
                height: 42,
              ),
              Container(
                width: 285,
                child: Textcustam(
                  text: 'Please select option to send link reset password',
                  align: TextAlign.center,
                  size: 16,
                ),
              ),
              SizedBox(
                height: 75,
              ),
              funcustam(
                'Reset via email',
                'If you have email linked to acount',
                Icon(Icons.email_outlined),
                () {
                  Navigator.pushNamed(context, '/RecoverEmail');
                },
              ),
              SizedBox(
                height: 31,
              ),
              funcustam('Reset via SMS', 'If you have number linked to acount',
                  Icon(Icons.smartphone_sharp), () {
                Navigator.pushNamed(context, '/NewPassword');
              })
            ],
          ),
        ),
      ),
    );
  }

  Widget funcustam(
      String tital, String subtitle, Icon iconss, VoidCallback funs) {
    return Container(
      height: 90,
      //  width: 325,
      child: ListTile(
        onTap: funs,
        leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffFBF0D9)),
            child: iconss),
        title: Textcustam(
          text: tital,
          weight: FontWeight.w500,
          size: 16,
        ),
        subtitle: Textcustam(text: subtitle),
        trailing: Container(
          height: 44,
          width: 43,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Btncol),
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 12,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
