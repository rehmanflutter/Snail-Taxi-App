import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/LoginSignUp/logincontroler.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/CustamWidget/textfiledcustam.dart';
import 'package:snali/View/custams.dart';

class LoginList extends StatelessWidget {
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    final controler = Provider.of<LoginControler>(context, listen: false);
    return Column(
      children: [
        SizedBox(
          height: 55,
        ),
        Textfiledcustam(
          labeltext: 'User Name',
          starticon: Icon(Icons.alternate_email, color: Colors.grey),
        ),
        SizedBox(
          height: 15,
        ),
        ValueListenableBuilder(
          valueListenable: toggle,
          builder: (context, value, child) => Textfiledcustam(
            obscur: toggle.value,
            labeltext: 'Password ...',
            starticon: Icon(
              Icons.safety_check_rounded,
              color: Colors.grey,
            ),
            lasticon: IconButton(
                onPressed: () {
                  toggle.value = !toggle.value;
                },
                icon: Icon(
                    toggle.value ? Icons.visibility_off : Icons.visibility)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/RecoverPassword');
              },
              child: Textcustam(
                text: 'Forget Password?',
                size: 14,
                weight: FontWeight.w400,
                col: Colors.black,
              ),
            )
          ],
        ),
        SizedBox(
          height: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Textcustam(
              text: 'Remember me',
              size: 14,
              weight: FontWeight.w400,
            ),
            Container(
              height: 23,
              width: 37,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Btncol,
              ),
              child: Consumer<LoginControler>(
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
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Textcustam(text: 'Or log in with '),
        SizedBox(
          height: 15,
        ),
        Container(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              controler.containerImage('images/Apple.png'),
              controler.containerImage('images/Twitter.png'),
              controler.containerImage('images/gogal.png')
            ],
          ),
        ),
        SizedBox(
          height: 34,
        ),
        RoundButton(
            title: 'Login',
            fun: () {
              Navigator.pushNamed(context, '/HomeScreen');
            },
            wigth: 200)
      ],
    );
  }
}
