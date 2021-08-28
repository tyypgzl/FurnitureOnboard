import 'package:flutter/material.dart';
import 'package:onboarding_screen/constants/color_theme.dart';
import 'package:onboarding_screen/view/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnboardScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor().splashGradient1,
              AppColor().splashGradient2,
              AppColor().splashGradient3,
              AppColor().splashGradient4,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Image.asset(
            "assets/images/flutter.png",
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
