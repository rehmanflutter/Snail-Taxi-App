import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/LoginSignUp/signupControler.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/CustamWidget/textfiledcustam.dart';
import 'package:snali/View/custams.dart';

class SignupList extends StatelessWidget {
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    final controlers = Provider.of<SigupControlers>(context, listen: false);
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: 55),
        Textfiledcustam(
          controller: controlers.fulname,
          labeltext: 'Full Name',
          starticon: Icon(
            Icons.supervised_user_circle_outlined,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 15),
        Textfiledcustam(
          controller: controlers.email,
          labeltext: 'e-mail Address',
          starticon: Icon(
            Icons.alternate_email,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 15),
        Consumer<SigupControlers>(
          builder: (context, provider, child) {
            return Column(
              children: [
                Container(
                  height: 62,
                  width: 289,
                  child: ValueListenableBuilder(
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
                            //  color: Colors.amber,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                ),
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
                ),
                SizedBox(height: 26),
                Row(
                  children: [
                    Expanded(
                      child: LinearProgressIndicator(
                        value: provider.passwordStrength,
                        backgroundColor: OffBtn,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          getColorBasedOnStrength(provider.passwordStrength),
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
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: provider.isStrongPassword
                          ? Colors.green
                          : Colors.grey.shade200,
                    ),
                    Textcustam(
                      text: '  at least 6 characters',
                      weight: FontWeight.w400,
                    )
                  ],
                ),
              ],
            );
          },
        ),
        SizedBox(
          height: 70,
        ),
        RoundButton(
            title: 'Sign Up',
            fun: () {
              Navigator.pushNamed(context, '/VerifyphoneNumber');
            },
            wigth: 200)
      ]),
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
