import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:free_banking/screens/profile/profile_widget/customProfileAppBar.dart';
import 'package:free_banking/screens/profile/profile_widget/data.dart';
import 'package:free_banking/screens/profile/profile_widget/profile_info.dart';

import '../../models/customInputField.dart';
import '../../models/textFileld_model.dart';
import '../onboarding/widget/textField_widget.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  TextEditingController? get nameController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomProfileAppBar(title: 'Edit Profile'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              const Center(child: ProfilInfo(isCentered: true)),
              const SizedBox(height: 32),
              const Text(
                "Full Name",
                style: TextStyle(
                  color: Color(0xffA2A2A7),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              CustomInputField(
                controller: nameController,
                hintText: 'Tanya Myroniuk',
                prefixIcon: Icons.account_circle_outlined,
                validator: (val) {
                  if (val == null || val.trim().isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 21),
              const Text(
                "Email Address",
                style: TextStyle(
                  color: Color(0xffA2A2A7),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              CustomInputField(
                controller: nameController,
                hintText: "Tanya Myroniuk@gmail.com",
                prefixIcon: Icons.email_outlined,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Please enter your email";
                  }
                  final emailRegex = RegExp(
                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                  );
                  if (!emailRegex.hasMatch(value.trim())) {
                    return "This Email is not valid";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 21),
              const Text(
                "Phone Number",
                style: TextStyle(
                  color: Color(0xffA2A2A7),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              CustomInputField(
                controller: nameController,
                hintText: "+8801712663389",
                prefixIcon: Icons.phone_outlined,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your phone number';
                  }
                  final phoneRegex = RegExp(r'^\+[0-9]{10,15}$');

                  if (!phoneRegex.hasMatch(value.trim())) {
                    return 'Please enter a valid phone number (e.g. +8801712663389)';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 21),
              const Text(
                "Birth Date",
                style: TextStyle(
                  color: Color(0xffA2A2A7),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              DateOfBirthField(
                initialDate: DateTime(2000, 9, 28),
                onDateSelected: (date) {
                },
              ),
              const SizedBox(height: 125),
              const Center(
                child: Text(
                  "Joined 28 Jan 2021",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA2A2A7),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}