import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/constants/color_theme.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:onboarding_screen/view/home_view.dart';

class OnboardScreen extends StatefulWidget {
  @override
  _OnboardScreenState createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColor().gradientBegin, AppColor().gradientEnd],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(flex: 30),
            animatedTextContainer(),
            Spacer(flex: 20),
            imageContainer(),
            Spacer(flex: 15),
            elevatedButton(context),
            Spacer(flex: 15),
          ],
        ),
      ),
    );
  }
}

Widget animatedTextContainer() => Container(
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(width: 20.0, height: 100.0),
          Text(
            'Modern',
            style:
                GoogleFonts.raleway(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          SizedBox(width: 10.0, height: 100.0),
          DefaultTextStyle(
            style: GoogleFonts.raleway(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w300),
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('Furniture'),
                RotateAnimatedText('Comfort'),
                RotateAnimatedText('Payment'),
              ],
            ),
          ),
        ],
      ),
    );

Widget imageContainer() => Container(
      width: 3000,
      child: Image.asset(
        "assets/images/chair.png",
      ),
    );

Widget elevatedButton(BuildContext context) => ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppColor.elevatedButtonPrimary,
        minimumSize: Size(200, 40),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomeView()),
            (route) => false);
      },
      child: Text(
        "Let's Shop",
        style: GoogleFonts.raleway(fontWeight: FontWeight.w500),
      ),
    );
