import 'package:flutter/material.dart';
import 'package:free_banking/screens/add_new_card_screen.dart';
import 'package:free_banking/screens/all_cards_screen.dart';
import 'package:free_banking/screens/bottomnavbar/bottomnavbar_screen.dart';
import 'package:free_banking/screens/onboarding/onboarding_screen.dart';

class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: OnboardingScreen(),
    );
  }
}