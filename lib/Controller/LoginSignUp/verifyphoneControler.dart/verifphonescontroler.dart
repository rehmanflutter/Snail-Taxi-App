import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:snali/View/custams.dart';

class VerifPhoneNo extends ChangeNotifier {
  //TextEditingController phonecon = TextEditingController();
  String selectedCountryCode = '+92';
  String?
      selectedCountryName; // Make sure it's nullable since it can be initially null
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  void setSelectedCountryCode(String code, String? countryName) {
    // phonecon.text = code;
    selectedCountryCode = code;
    selectedCountryName = countryName;
    // phoneController.text = code;
    notifyListeners();
  }

  void setSelectedCountryName(String? countryName) {
    selectedCountryName = countryName;
    notifyListeners();
  }

// Pin Put Otb Widget
  Widget buildPinPut() {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: OffBtn,
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: Btncol,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.yellow.shade100, // Shadow color
            offset: Offset(0, 10), // Offset to the bottom
            blurRadius: 4,
          ) // Blur radius of the shadow
        ],
      ),
    );

    return Pinput(
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      length: 4,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
    );
  }
}
