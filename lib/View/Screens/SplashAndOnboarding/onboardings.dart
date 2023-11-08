import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:snali/View/CustamWidget/Buttoncustam.dart';
import 'package:snali/View/CustamWidget/textBtn.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';

import '../../../Controller/OnboardingControler/controler.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providecontrol =
        Provider.of<OnBoardingControlers>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Container(
                  height: 460,
                  child: PageView.builder(
                    controller: providecontrol.pageControllers,
                    //    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(80),
                            ),
                            color: Color(0xfff5f6fa)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              height: 280,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(providecontrol
                                          .onboardingPageview[index].image),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              height: 43,
                            ),
                            Textcustam(
                              text: providecontrol
                                  .onboardingPageview[index].title,
                              size: 24,
                              weight: FontWeight.w700,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Textcustam(
                              text:
                                  providecontrol.onboardingPageview[index].text,
                              size: 18,
                              weight: FontWeight.w400,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: providecontrol.onboardingPageview.length,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SmoothPageIndicator(
                  controller: providecontrol.pageControllers,
                  count: providecontrol.onboardingPageview.length,
                  effect: WormEffect(
                    activeDotColor: Colors.black,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                TextBtn(
                  col: Colors.black,
                  title: 'Skip',
                  fun: () {
                    Navigator.pushNamed(context, '/LoginSignup');
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                RoundButton(
                  wigth: 150,
                  title: 'Next',
                  fun: () {
                    if (providecontrol.pageControllers.page ==
                        providecontrol.onboardingPageview.length - 1) {
                      // If the current page is the last one, jump back to the first page.
                      providecontrol.pageControllers.jumpToPage(0);
                    } else {
                      // Go to the next page.
                      providecontrol.pageControllers.nextPage(
                        duration: Duration(seconds: 1),
                        curve: Curves.ease,
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
