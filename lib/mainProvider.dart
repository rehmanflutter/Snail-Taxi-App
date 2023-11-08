import 'package:provider/provider.dart';
import 'package:snali/Controller/LoginSignUp/logincontroler.dart';
import 'package:snali/Controller/OnboardingControler/controler.dart';

class ProviderMain {
  static final Providerss = [
    ChangeNotifierProvider(
      create: (context) => OnBoardingControlers(),
    ),

    ChangeNotifierProvider(
      create: (context) => LoginControler(),
    ),
    //   ChangeNotifierProvider(
    //   create: (context) => OnBoardingControlers(),
    // ),
    //   ChangeNotifierProvider(
    //   create: (context) => OnBoardingControlers(),
    // ),
    //   ChangeNotifierProvider(
    //   create: (context) => OnBoardingControlers(),
    // ),
    //   ChangeNotifierProvider(
    //   create: (context) => OnBoardingControlers(),
    // ),
    //   ChangeNotifierProvider(
    //   create: (context) => OnBoardingControlers(),
    // ),
    //   ChangeNotifierProvider(
    //   create: (context) => OnBoardingControlers(),
    // ),
    //   ChangeNotifierProvider(
    //   create: (context) => OnBoardingControlers(),
    // ),
    //   ChangeNotifierProvider(
    //   create: (context) => OnBoardingControlers(),
    // ),
    //   ChangeNotifierProvider(
    //   create: (context) => OnBoardingControlers(),
    // ),
  ];
}
