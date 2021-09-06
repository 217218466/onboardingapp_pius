import 'package:flutter/material.dart';
import 'package:onboardingapp/onboarding_one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter App1',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: OnBoardingOne(),
      ),
    );
  }
}
