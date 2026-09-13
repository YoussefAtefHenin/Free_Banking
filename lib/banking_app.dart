import 'package:flutter/material.dart';
import 'package:free_banking/screens/bottomnavbar/bottomnavbar_screen.dart';

class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BottomNavBarScreen(),
    );
  }
}