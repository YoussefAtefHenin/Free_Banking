import 'package:flutter/material.dart';
import 'package:free_banking/screens/bottomnavbar/bottomnavbar_screen.dart';
import 'package:free_banking/screens/onboarding/onboarding_screen.dart';
import 'package:free_banking/screens/profile/edit_profile_screen.dart';
import 'package:free_banking/screens/profile/profile_screen.dart';
import 'package:free_banking/screens/search_screen.dart';
import 'package:free_banking/screens/transaction_history_screen.dart';

class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SearchScreen(),

    );
  }
}