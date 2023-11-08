import 'package:flutter/cupertino.dart';
import 'package:snali/Model/cnboardingModel.dart';

class OnBoardingControlers extends ChangeNotifier {
  PageController pageControllers = PageController();

  List<OnboardingModels> onboardingPageview = [
    OnboardingModels(
        image: 'images/onboardingPic1.png',
        title: 'Chose The Route',
        text: 'Easily'),
    OnboardingModels(
        image: 'images/onboardingPic2.png',
        title: 'Request ride',
        text: 'Quickly'),
    OnboardingModels(
        image: 'images/onboardingPic3.png',
        title: 'Get your Taxi',
        text: 'Simply'),
    OnboardingModels(
        image: 'images/onboardingPic4.png',
        title: 'Save Your Time',
        text: 'With Us'),
  ];
}
