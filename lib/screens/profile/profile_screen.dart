import 'package:flutter/material.dart';
import 'package:free_banking/screens/profile/categoryChartBottomSheet.dart';
import 'package:free_banking/screens/profile/profile_widget/customProfileAppBar.dart';
import 'package:free_banking/screens/profile/profile_widget/opition_profile.dart';
import 'package:free_banking/screens/profile/profile_widget/profile_info.dart';

import '../bottomnavbar/settings_screen.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomProfileAppBar(title: 'Profile',actionIcon: Icons.person_add_alt,onActionTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditProfileScreen(),
          ),
        );
      },),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            ProfilInfo(),
            SizedBox(height: 30),
            OpitionProfile(
              text: 'Personal Information',
              onTrailingTap: () {
              },
              icon: Icons.account_circle_outlined,
            ),
            OpitionProfile(
              text: 'Payment Preferences',
              icon: Icons.account_balance_wallet_outlined,
              onTrailingTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) => const Categorychartbottomsheet(),
                );
              },
            ),
            OpitionProfile(
              text: 'Banks and Cards',
              icon: Icons.credit_card_outlined,
              onTrailingTap: () {},
            ),
            OpitionProfile(
              text: 'Notifications',
              icon: Icons.notifications_none_outlined,
              onTrailingTap: () {},
            ),
            OpitionProfile(
              text: 'Message Center',
              icon: Icons.sms_outlined,
              onTrailingTap: () {},
            ),
            OpitionProfile(
              text: 'Address',
              icon: Icons.location_on_outlined,
              onTrailingTap: () {},
            ),
            OpitionProfile(
              text: 'Settings',
              onTrailingTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
              icon: Icons.settings_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
