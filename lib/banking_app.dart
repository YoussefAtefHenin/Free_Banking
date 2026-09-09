import 'package:flutter/material.dart';
import 'package:free_banking/screens/onboarding/onboarding_screen.dart';

class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),

    );
  }
}
