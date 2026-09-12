import 'package:flutter/material.dart';

import 'nav_bar_widget/opition_setting.dart';
import 'nav_bar_widget/setting_appbar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isBiometricEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SettingAppbar(),
                const SizedBox(height: 24),

                // --- قسم General ---
                const Text(
                  "General",
                  style: TextStyle(fontSize: 14, color: Color(0xffA2A2A7)),
                ),
                const SizedBox(height: 12),
                SettingTile(title: 'Language', trailingText: 'English', onTap: () {}),
                SettingTile(title: 'My Profile', onTap: () {}),
                SettingTile(title: 'Contact Us', onTap: () {}),

                const SizedBox(height: 24),

                // --- قسم Security ---
                const Text(
                  "Security",
                  style: TextStyle(fontSize: 14, color: Color(0xffA2A2A7)),
                ),
                const SizedBox(height: 12),
                SettingTile(title: 'Change Password', onTap: () {}),
                SettingTile(title: 'Privacy Policy', onTap: () {}),

                const SizedBox(height: 16),
                const Text(
                  "Choose what data you share with us",
                  style: TextStyle(fontSize: 13, color: Color(0xffA2A2A7)),
                ),
                const SizedBox(height: 8),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Text(
                          'Biometric',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1E1E2D),
                          ),
                        ),
                      ),
                      Transform.scale(
                        scale: 0.85,
                        child: Switch(
                          value: isBiometricEnabled,
                          activeColor: const Color(0xff0066FF),
                          onChanged: (val) {
                            setState(() {
                              isBiometricEnabled = val;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Color(0xffF2F2F2),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}