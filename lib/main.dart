import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:snali/Controller/BookingControler/RatedControler/ratedcontroler.dart';
import 'package:snali/Controller/BookingControler/RatedControler/sendTipcon.dart';
import 'package:snali/Controller/BookingControler/bookingdetailcontr.dart';
import 'package:snali/Controller/BookingControler/cancelTripCon.dart';
import 'package:snali/Controller/BookingControler/detailcon.dart';
import 'package:snali/Controller/BookingControler/paymentControler.dart';
import 'package:snali/Controller/BookingControler/selectAddresscon.dart';
import 'package:snali/Controller/ChatControler/chatPageControl.dart';
import 'package:snali/Controller/History/HistoryappControler.dart';
import 'package:snali/Controller/HomeControler/pagehomeCon.dart';
import 'package:snali/Controller/LoginSignUp/forgetPassword/forgetcontroler.dart';
import 'package:snali/Controller/LoginSignUp/logincontroler.dart';
import 'package:snali/Controller/LoginSignUp/signupControler.dart';
import 'package:snali/Controller/LoginSignUp/verifyphoneControler.dart/verifphonescontroler.dart';
import 'package:snali/Controller/NotificationControler/DriverdetailsControl/Driverdetailcontrol.dart';
import 'package:snali/Controller/NotificationControler/PaymenthistoryControl.dart';
import 'package:snali/Controller/NotificationControler/faqcontroler.dart';
import 'package:snali/Controller/NotificationControler/myWalletControl.dart';
import 'package:snali/Controller/NotificationControler/promotionControler.dart';
import 'package:snali/Controller/NotificationControler/rideHistoryControl.dart';
import 'package:snali/Controller/NotificationControler/todayNotificagtion.dart';
import 'package:snali/Controller/OnboardingControler/controler.dart';
import 'package:snali/Controller/SettingControler/accoundControler.dart';
import 'package:snali/Controller/SettingControler/paymentaccountcontro.dart';
import 'package:snali/Controller/choseTripe/chosetripmodel.dart';
import 'package:snali/View/Screens/SplashAndOnboarding/splash.dart';

import 'View/routing.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor:
          Colors.transparent, // Set the background color to transparent
      statusBarIconBrightness:
          Brightness.dark, // Set the icon color to dark (black)
    ),
  );
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  final Rout NameRoute = Rout();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnBoardingControlers(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginControler(),
        ),
        ChangeNotifierProvider(
          create: (context) => SigupControlers(),
        ),
        ChangeNotifierProvider(
          create: (context) => VerifPhoneNo(),
        ),
        ChangeNotifierProvider(
          create: (context) => ForgetControlers(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeControler(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavoriteAndBookingcon(),
        ),
        ChangeNotifierProvider(
          create: (context) => DetailsControler(),
        ),
        ChangeNotifierProvider(
          create: (context) => PAymentControler(),
        ),
        ChangeNotifierProvider(
          create: (context) => RatedControlerclass(),
        ),
        ChangeNotifierProvider(
          create: (context) => SendTipConteroler(),
        ),
        ChangeNotifierProvider(
          create: (context) => SelectAddressControler(),
        ),
        ChangeNotifierProvider(
          create: (context) => CancelTripControler(),
        ),
        ChangeNotifierProvider(
          create: (context) => ChoseTripControler(),
        ),
        ChangeNotifierProvider(
          create: (context) => Notificationsee(),
        ),
        ChangeNotifierProvider(
          create: (context) => FaqControlers(),
        ),
        ChangeNotifierProvider(
          create: (context) => MypromotionControler(),
        ),
        ChangeNotifierProvider(
          create: (context) => MyWalletControlers(),
        ),
        ChangeNotifierProvider(
          create: (context) => RideHistoryControlers(),
        ),
        ChangeNotifierProvider(
          create: (context) => PaymenthistoryCanComControler(),
        ),
        ChangeNotifierProvider(
          create: (context) => DriverdetailsControlerClass(),
        ),

        ChangeNotifierProvider(
          create: (context) => AccoundControler(),
        ),
        ChangeNotifierProvider(
          create: (context) => PaymentControlerAccound(),
        ),
        ChangeNotifierProvider(
          create: (context) => ChatControl(),
        ),
        ChangeNotifierProvider(
          create: (context) => HistoryBottomappControler(),
        ),
        //   ChangeNotifierProvider(
        //   create: (context) => DriverdetailsControlerClass(),
        // ),
        //   ChangeNotifierProvider(
        //   create: (context) => DriverdetailsControlerClass(),
        // ),
        //   ChangeNotifierProvider(
        //   create: (context) => DriverdetailsControlerClass(),
        // ),
        //   ChangeNotifierProvider(
        //   create: (context) => DriverdetailsControlerClass(),
        // ),
      ], // ProviderMain.Providerss,
      child: MaterialApp(
        title: 'Snali ',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        onGenerateRoute: NameRoute.Ongenrate,
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
