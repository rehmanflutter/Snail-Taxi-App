import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/LoginSignUp/forgetPassword/forgetcontroler.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class NewPassword extends StatelessWidget {
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bacgroundcol,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 79,
            ),
            Textcustam(
              text: 'Create new',
              size: 32,
              weight: FontWeight.w700,
            ),
            SizedBox(
              height: 8,
            ),
            Textcustam(
              text: 'Password',
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
              height: 97,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 275,
                    child: Textcustam(
                      text:
                          'Create strong and secure passwordthat protect your account',
                      align: TextAlign.center,
                      size: 16,
                    ),
                  ),
                  SizedBox(
                    height: 62,
                  ),
                  Consumer<ForgetControlers>(
                    builder: (context, provider, child) {
                      return Column(
                        children: [
                          ValueListenableBuilder(
                            valueListenable: toggle,
                            builder: (context, value, child) => TextFormField(
                              obscureText: toggle.value,
                              controller: provider.passwordController,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      toggle.value = !toggle.value;
                                    },
                                    icon: Icon(toggle.value
                                        ? Icons.visibility_off
                                        : Icons.visibility)),
                                labelText: 'Password ...',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(left: 9.0),
                                  child: Container(
                                    height: 27,
                                    width: 50,
                                    child: Row(
                                      children: [
                                        Icon(Icons.lock),
                                        Textcustam(
                                          text: '   |',
                                          col: Colors.grey,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              onChanged: (password) {
                                provider.updatePasswordStrength(password);
                              },
                            ),
                          ),
                          SizedBox(height: 36),
                          Row(
                            children: [
                              Expanded(
                                child: LinearProgressIndicator(
                                  value: provider.passwordStrength,
                                  backgroundColor: OffBtn,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    getColorBasedOnStrength(
                                        provider.passwordStrength),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Textcustam(
                                text: 'Strong',
                                size: 14,
                                weight: FontWeight.w700,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 23,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: provider.isStrongPassword
                                    ? Colors.green
                                    : Colors.grey.shade300,
                              ),
                              Textcustam(
                                text: '  at least 6 characters',
                                weight: FontWeight.w400,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Row(
                            children: [
                              Icon(Icons.check_circle,
                                  color: provider.isStrongPassword
                                      ? Colors.grey.shade300
                                      : Colors.green),
                              Textcustam(
                                text: '  Contain at lest one number',
                                weight: FontWeight.w400,
                              )
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(
                    height: 95,
                  ),
                  RoundButton(
                      title: 'Save',
                      fun: () {
                        Navigator.pushNamed(context, '/HomeScreen');
                      },
                      wigth: 200)
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Color getColorBasedOnStrength(double strength) {
    if (strength < 0.3) {
      return Colors.red;
    } else if (strength < 0.6) {
      return Colors.orange;
    } else {
      return Colors.green;
    }
  }
}
