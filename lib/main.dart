


import 'package:flutter/material.dart';
import 'package:free_bank/screens/change_password_screen.dart';
import 'package:free_bank/screens/request_money_screen.dart';
import 'package:free_bank/screens/terms_condition_screen.dart';
import 'screens/transaction_history_screen.dart';

void main() {
  runApp(const FreeBankApp());
}

class FreeBankApp extends StatelessWidget {
  const FreeBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Free Bank',
      home: const TermsConditionScreen(),
    );
  }
}