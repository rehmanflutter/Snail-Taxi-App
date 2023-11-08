import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/LoginSignUp/verifyphoneControler.dart/verifphonescontroler.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/numorphiContainer.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';
import 'package:snali/View/custams.dart';

class VerificationOtp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final countryProvider = Provider.of<VerifPhoneNo>(context, listen: false);

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
                text: 'Verification',
                size: 32,
                weight: FontWeight.w700,
              ),
              SizedBox(
                height: 8,
              ),
              Textcustam(
                text: 'Code',
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
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Textcustam(
                      text: 'Verification code was sent to',
                      size: 17,
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    CustamContainer(
                      hight: 50,
                      wigth: 204,
                      col: OffBtn,
                      circular: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Textcustam(
                            text: '${countryProvider.phoneController.text}    ',
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.grey.shade400,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    countryProvider.buildPinPut(),
                    SizedBox(
                      height: 70,
                    ),
                    Textcustam(text: 'Resend code in '),
                    SizedBox(
                      height: 53,
                    ),
                    Container(
                      height: 60,
                      width: 200,
                      child: NeumorphicButton(
                        onPressed: () {},
                        style: NeumorphicStyle(
                          color: OffBtn,
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(20), // Set the border radius
                          ),
                          lightSource: LightSource.bottom,
                          depth: 0,
                        ),
                        child: Center(
                            child: Textcustam(
                          text: 'Resend',
                          col: Colors.black54,
                          size: 14,
                          weight: FontWeight.w600,
                          //  col: Colors.,
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    RoundButton(
                        title: 'Send Code',
                        fun: () {
                          Navigator.pushNamed(context, '/HomeScreen');
                        },
                        wigth: 200)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
