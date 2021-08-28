import 'package:flutter/material.dart';
import 'package:onboarding_screen/view/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(),
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
