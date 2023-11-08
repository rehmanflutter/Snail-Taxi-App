import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/bottomappbar.dart';
import 'package:snali/View/Screens/Booking/Ratedriver/ratedmood.dart';
import 'package:snali/View/Screens/Booking/Ratedriver/ratedpay.dart';
import 'package:snali/View/Screens/Booking/Ratedriver/sendtip.dart';
import 'package:snali/View/Screens/Booking/addressselect.dart';
import 'package:snali/View/Screens/Booking/arriving.dart';
import 'package:snali/View/Screens/Booking/boking.dart';
import 'package:snali/View/Screens/Booking/bookingdetaile.dart';
import 'package:snali/View/Screens/Booking/cancelTrip.dart';
import 'package:snali/View/Screens/Booking/detail.dart';
import 'package:snali/View/Screens/Booking/driverfind.dart';
import 'package:snali/View/Screens/Booking/favoritePlace.dart';
import 'package:snali/View/Screens/Booking/PaymentOptions/paymentOption.dart';
import 'package:snali/View/Screens/Booking/Ratedriver/ratedriver.dart';
import 'package:snali/View/Screens/Chats/callpage.dart';
import 'package:snali/View/Screens/Chats/chatpage.dart';
import 'package:snali/View/Screens/Chose%20a%20Tripe/chosetrip.dart';
import 'package:snali/View/Screens/History/rideistoryss.dart';
import 'package:snali/View/Screens/Home/home.dart';
import 'package:snali/View/Screens/LoginSignupVerify/ForgetPassword/newpassword.dart';
import 'package:snali/View/Screens/LoginSignupVerify/ForgetPassword/recoverPassword.dart';
import 'package:snali/View/Screens/LoginSignupVerify/ForgetPassword/recoveremail.dart';
import 'package:snali/View/Screens/LoginSignupVerify/login.dart';
import 'package:snali/View/Screens/LoginSignupVerify/loginsign.dart';
import 'package:snali/View/Screens/LoginSignupVerify/signup.dart';
import 'package:snali/View/Screens/LoginSignupVerify/verifyphone/otpverification.dart';
import 'package:snali/View/Screens/LoginSignupVerify/verifyphone/verify.dart';
import 'package:snali/View/Screens/Notification/Driverdetails/driverdetails.dart';
import 'package:snali/View/Screens/Notification/faq.dart';
import 'package:snali/View/Screens/Notification/invitefriendsRevid.dart';
import 'package:snali/View/Screens/Notification/mypromotion.dart';
import 'package:snali/View/Screens/Notification/mywallet.dart';
import 'package:snali/View/Screens/Notification/notification.dart';
import 'package:snali/View/Screens/Notification/nottificationShow.dart';
import 'package:snali/View/Screens/Notification/inviteFriends.dart';
import 'package:snali/View/Screens/Notification/paymenthistory%20.dart';
import 'package:snali/View/Screens/Notification/ridehistoryss.dart';
import 'package:snali/View/Screens/Settings/accountsetting.dart';
import 'package:snali/View/Screens/Settings/addnewcard.dart';
import 'package:snali/View/Screens/Settings/editaccount.dart';
import 'package:snali/View/Screens/Settings/paymentaccound.dart';
import 'package:snali/View/Screens/SplashAndOnboarding/onboardings.dart';
import 'package:snali/View/Screens/SplashAndOnboarding/splash.dart';

class Rout {
  Route? Ongenrate(RouteSettings settings) {
    switch (settings.name) {
      case '/SplashScreen':
        return MaterialPageRoute(builder: ((context) => SplashScreen()));
      case '/OnboardingScreen':
        return MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        );
      case '/LoginSignup':
        return MaterialPageRoute(
          builder: (context) => LoginSignup(),
        );
      case '/LoginList':
        return MaterialPageRoute(
          builder: (context) => LoginList(),
        );

      case '/SignupList':
        return MaterialPageRoute(
          builder: (context) => SignupList(),
        );
      case '/VerifyphoneNumber':
        return MaterialPageRoute(
          builder: (context) => VerifyphoneNumber(),
        );
      case '/VerificationOtp':
        return MaterialPageRoute(
          builder: (context) => VerificationOtp(),
        );
      case '/RecoverPassword':
        return MaterialPageRoute(
          builder: (context) => RecoverPassword(),
        );
      case '/RecoverEmail':
        return MaterialPageRoute(
          builder: (context) => RecoverEmail(),
        );
      case '/NewPassword':
        return MaterialPageRoute(
          builder: (context) => NewPassword(),
        );
      case '/HomeScreen':
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case '/CustamScrolAppBar':
        return MaterialPageRoute(
          builder: (context) => CustamScrolAppBar(),
        );
      case '/Booking':
        return MaterialPageRoute(
          builder: (context) => Booking(),
        );

      case '/AddressSelection':
        return MaterialPageRoute(
          builder: (context) => AddressSelection(),
        );

      case '/FavoritePlace':
        return MaterialPageRoute(
          builder: (context) => FavoritePlace(),
        );

      case '/BookingDetails':
        return MaterialPageRoute(
          builder: (context) => BookingDetails(),
        );

      case '/DriverFind':
        return MaterialPageRoute(
          builder: (context) => DriverFind(),
        );

      case '/ArrivingClass':
        return MaterialPageRoute(
          builder: (context) => ArrivingClass(),
        );

      case '/DetailsDriverIsComing':
        return MaterialPageRoute(
          builder: (context) => DetailsDriverIsComing(),
        );

      case '/PayoutOptions':
        return MaterialPageRoute(
          builder: (context) => PayoutOptions(),
        );

      case '/RateDriver':
        return MaterialPageRoute(
          builder: (context) => RateDriver(),
        );
      case '/RateYourMoode':
        return MaterialPageRoute(
          builder: (context) => RateYourMoode(),
        );
      case '/RatedPayTipeNot':
        return MaterialPageRoute(
          builder: (context) => RatedPayTipeNot(),
        );
      case '/SendTip':
        return MaterialPageRoute(
          builder: (context) => SendTip(),
        );
      case '/CancelTrip':
        return MaterialPageRoute(
          builder: (context) => CancelTrip(),
        );
      case '/ChoseTripClass':
        return MaterialPageRoute(
          builder: (context) => ChoseTripClass(),
        );
      case '/NotificationsClass':
//

        // NotificationsClass  Starts

        //
        return MaterialPageRoute(
          builder: (context) => NotificationsClass(),
        );
      case '/NotificationShowClass':
        return MaterialPageRoute(
          builder: (context) => NotificationShowClass(),
        );
      case '/FaqClass':
        return MaterialPageRoute(
          builder: (context) => FaqClass(),
        );
      case '/Mypromotions':
        return MaterialPageRoute(
          builder: (context) => Mypromotions(),
        );
      case '/MyWallet':
        return MaterialPageRoute(
          builder: (context) => MyWallet(),
        );
      case '/RideHistory':
        return MaterialPageRoute(
          builder: (context) => RideHistory(),
        );
      case '/InviteFriendsReward':
        return MaterialPageRoute(
          builder: (context) => InviteFriendsReward(),
        );

      case '/RideHistoryClass':
        return MaterialPageRoute(
          builder: (context) => RideHistoryClass(),
        );

      case '/RideHistory':
        return MaterialPageRoute(
          builder: (context) => RideHistory(),
        );

      case '/PaymenthistoryCanCom':
        return MaterialPageRoute(
          builder: (context) => PaymenthistoryCanCom(),
        );

      case '/DriverdetailsClass':
        return MaterialPageRoute(
          builder: (context) => DriverdetailsClass(),
        );

//

//Chats Classes

//
      case '/ChatPage':
        return MaterialPageRoute(
          builder: (context) => ChatPage(),
        );
      //
      case '/Call':
        return MaterialPageRoute(
          builder: (context) => Call(),
        );

      //case '/RideHistory':
      //   return MaterialPageRoute(
      //     builder: (context) => RideHistory(),
      //   );

//

      ///
      ///      HistoryBottomapp   2nd app bar
      ///

      case '/HistoryBottomapp':
        return MaterialPageRoute(
          builder: (context) => HistoryBottomapp(),
        );
      //
      //case '/RideHistory':
      //   return MaterialPageRoute(
      //     builder: (context) => RideHistory(),
      //   );
      //

//
// Setting Classes
//

      case '/AccountSetting':
        return MaterialPageRoute(
          builder: (context) => AccountSetting(),
        );

      case '/EditAccount':
        return MaterialPageRoute(
          builder: (context) => EditAccount(),
        );

      case '/PaymentAccoundSet':
        return MaterialPageRoute(
          builder: (context) => PaymentAccoundSet(),
        );

      case '/AddNewCard':
        return MaterialPageRoute(
          builder: (context) => AddNewCard(),
        );

      //case '/RideHistory':
      //   return MaterialPageRoute(
      //     builder: (context) => RideHistory(),
      //   );
      //

      //case '/RideHistory':
      //   return MaterialPageRoute(
      //     builder: (context) => RideHistory(),
      //   );
      //

      //case '/RideHistory':
      //   return MaterialPageRoute(
      //     builder: (context) => RideHistory(),
      //   );
      //

      //case '/RideHistory':
      //   return MaterialPageRoute(
      //     builder: (context) => RideHistory(),
      //   );
      //

    }
  }
}
