import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/LoginSignUp/logincontroler.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/Screens/LoginSignupVerify/login.dart';
import 'package:snali/View/Screens/LoginSignupVerify/signup.dart';
import 'package:snali/View/custams.dart';

class LoginSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Controler = Provider.of<LoginControler>(context, listen: false);

    return Scaffold(
      backgroundColor: bacgroundcol,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 53,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/Logo (1).png'),
              Textcustam(
                text: 'Snail.',
                size: 14,
                weight: FontWeight.w700,
              )
            ],
          ),
          SizedBox(
            height: 33,
          ),
          CustamContainer(
            hight: 70,
            wigth: 325,
            col: OffBtn,
            circular: 30,
            child: Consumer<LoginControler>(
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
                        text: 'Log in',
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
                        text: 'Sign Up',
                        weight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Consumer<LoginControler>(
                      builder: (context, value, child) =>
                          value.SelectIndex == 0 ? LoginList() : SignupList()),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
