import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:real_state_property/routing/app_router_names.dart';
import 'package:real_state_property/styles/app_images.dart';
import 'package:real_state_property/styles/colors.dart';
import 'package:real_state_property/styles/text_styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19.0),
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Scaffold(
      backgroundColor: AppColors.mainBgColor,
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: [
          PageViewModel(
            titleWidget: _buildTitleWidget(
              "Don't Miss Another Lead",
              Colors.black,
            ),
            bodyWidget: _buildBodyWidget(
              "More Than 90,000 Real Estate Agents Served",
              Colors.black,
            ),
            image: _buildImage(AppImages.appIcon),
            decoration: pageDecoration,
          ),
          PageViewModel(
            titleWidget: _buildTitleWidget(
              "Create Your Listing",
              Colors.black,
            ),
            bodyWidget: _buildBodyWidget(
              "We make it easy to get the word out with one touch email and social sharing.",
              Colors.black,
            ),
            image: _buildImage(AppImages.multiTasking, width: 300),
            decoration: pageDecoration,
          ),
          PageViewModel(
            titleWidget: _buildTitleWidget(
              "Run Your Open House",
              Colors.black,
            ),
            bodyWidget: _buildBodyWidget(
              "After each open house, we'll send visitors a professional follow up email containing your contact information.",
              Colors.black,
            ),
            image: _buildImage(AppImages.doorDrawing, width: 300),
            decoration: pageDecoration,
          ),
          PageViewModel(
            titleWidget: _buildTitleWidget(
              "Convert More Leads Into Clients",
              Colors.black,
            ),
            bodyWidget: _buildBodyWidget(
              "We'll send you a list of leads that don't have an agent or have a home to sell, so you know where to focus your time.",
              Colors.black,
            ),
            image: _buildImage(AppImages.yogaGirl, width: 220),
            decoration: pageDecoration,
          ),
        ],
        onDone: () => _onIntroEnd(context),
        showSkipButton: true,
        skipOrBackFlex: 0,
        nextFlex: 0,
        dotsFlex: 1,
        skip: Text('Skip', style: AppTextStyle.bodyText),
        next: Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
        done: Text('Done', style: AppTextStyle.bodyText),
        dotsDecorator: DotsDecorator(
          size: Size(10.0, 10.0),
          color: Colors.grey,
          activeColor: Colors.blue,
          activeSize: Size(20.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      ),
    );
  }

  void _onIntroEnd(context) {
    Navigator.pushNamed(context, RouteNames.login);
  }

  Widget _buildImage(String asset, {double width = 150.0}) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        asset,
        width: width,
      ),
    );
  }

  Widget _buildTitleWidget(String text, Color color) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: AppTextStyle.onboardingTitleText,
    );
  }

  Widget _buildBodyWidget(String text, Color color) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: AppTextStyle.onboardingBodyText,
    );
  }
}
