import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/LoginSignUp/verifyphoneControler.dart/verifphonescontroler.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class VerifyphoneNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final countryProvider = Provider.of<VerifPhoneNo>(context,
        listen: false); // Now listen to changes

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
                text: 'verify phone',
                size: 32,
                weight: FontWeight.w700,
              ),
              SizedBox(
                height: 8,
              ),
              Textcustam(
                text: 'Number',
                size: 16,
                weight: FontWeight.w700,
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                height: 5,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Btncol,
                ),
              ),
              SizedBox(
                height: 37,
              ),
              Container(
                width: 325,
                child: Textcustam(
                  text:
                      'Please confirm your country code and enter your phone number :',
                  align: TextAlign.center,
                  size: 17,
                  weight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 82,
              ),
              Center(
                child: Consumer<VerifPhoneNo>(
                  builder: (context, value, child) => GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 62,
                      width: 289,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CountryCodePicker(
                            onChanged: (CountryCode countryCode) {
                              countryProvider.setSelectedCountryCode(
                                  countryCode.dialCode!, countryCode.name);
                            },
                            initialSelection: 'PK',
                            //favorite: ['+92', 'PK'],
                            // showCountryOnly: false,
                            showFlag: true,
                            //   showFlagDialog: true,
                            //  alignLeft: false,
                          ),
                          Textcustam(
                            text:
                                ' ${countryProvider.selectedCountryName ?? 'Pakistan'}',
                            size: 16,
                            weight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 62,
                  width: 289,
                  child: Consumer<VerifPhoneNo>(
                    builder: (context, value, child) => TextField(
                      keyboardType: TextInputType.number,
                      controller: countryProvider.phoneController,
                      decoration: InputDecoration(
                        hintText: '(205) 555-0123 ',
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
                                Textcustam(
                                    text: ' ${value.selectedCountryCode}'),
                                Textcustam(
                                  text: ' |',
                                  col: Colors.grey,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Center(
                  child: RoundButton(
                      title: 'Send Code',
                      fun: () {
                        Navigator.pushNamed(context, '/VerificationOtp');
                      },
                      wigth: 200))
            ],
          ),
        ),
      ),
    );
  }
}
