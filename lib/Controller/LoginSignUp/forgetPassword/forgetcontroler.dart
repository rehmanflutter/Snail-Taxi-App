import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';

class ForgetControlers extends ChangeNotifier {
  double passwordStrength = 0.0;
  bool isStrongPassword = false;
  TextEditingController passwordController = TextEditingController();
  TextEditingController fulname = TextEditingController();

  TextEditingController email = TextEditingController();

  void updatePasswordStrength(String password) {
    passwordStrength = _calculateStrengthAsDouble(password);
    isStrongPassword = passwordStrength >= 0.6;
    notifyListeners();
  }

  double _calculateStrengthAsDouble(String password) {
    if (password.isEmpty) {
      return 0.0;
    } else {
      // You can customize this calculation based on your needs.
      // For example, here we calculate strength based on password length.
      return password.length / 10.0; // Adjust the divisor as needed.
    }
  }
}
