import 'package:flutter/material.dart';
import 'package:free_banking/models/button_model.dart';
import 'package:free_banking/models/textFileld_model.dart';
import 'package:free_banking/screens/auth/signup_screen.dart';
import 'package:free_banking/screens/buttomnavpar/home_screen.dart';
import 'package:free_banking/screens/onboarding/onboarding_screen.dart';

import 'package:free_banking/screens/onboarding/widget/button_widget.dart';
import 'package:free_banking/screens/onboarding/widget/textField_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: 
        
           Padding(
             padding: const EdgeInsets.all(24.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const SizedBox(height: 10),
              GestureDetector(
  onTap: () {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    } else {
      
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()), 
      );
    }
  },
  child: const Icon(Icons.arrow_back_ios_new_rounded),
),
                SizedBox(height: 53),
                Expanded(
                  child: Form(
                    key: _formKey,
                    child: ListView(
                      children: [
                        const SizedBox(height: 30),
                        Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 38),
                        TextfieldWidget(
                          TextfileldModel(
                            label: "Email Address",
                            hint: "tanyamyroniuk@gmail.com",
                            Ticon: Icons.email_outlined,
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
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
                        ),
                        TextfieldWidget(
                          TextfileldModel(
                            label: "Password",
                            hint: "••••••••",
                            Ticon: Icons.lock_outline,
                            controller: _passwordController,
                            obscureText: _obscurePassword,
                            suffix: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                            validator: (value) {
                              if (value == null || value.length < 6) {
                                return "Password must br at least 8";
                              }
                              return null;
                            },
                          ),
                        ),
                               
                        const SizedBox(height: 30),
                        ButtonWedgit(() {
                          if (_formKey.currentState!.validate()) {
                            print(_emailController.text);
                            print(_passwordController.text);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                            );
                          }
                        }, button: ButtonModel("Sign In")),
                               
                        const SizedBox(height: 10),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                           
                            children: [
                              const Text(
                                "I'm a new user. ",
                                style: TextStyle(color: Color((0xffA2A2A7))),
                              ),
                              GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignupScreen(),
      ),
    );
  },
  child: const Text(
    "Sign Up",
    style: TextStyle(
      color: Color(0xff0066FF),
      fontWeight: FontWeight.bold,
    ),
  ),
),
                            ],
                          ),
                        ),
                      ],
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
