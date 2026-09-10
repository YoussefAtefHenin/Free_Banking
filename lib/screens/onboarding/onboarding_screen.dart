import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:free_banking/models/button_model.dart';
import 'package:free_banking/models/onBordingText_model.dart';
import 'package:free_banking/screens/auth/signIn_screen.dart';
import 'package:free_banking/screens/onboarding/widget/button_widget.dart';
import 'package:free_banking/screens/onboarding/widget/h1_weidget.dart';
import 'package:free_banking/screens/onboarding/widget/h2_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  
  final PageController _pageController = PageController();
  int activeIndex = 0;

  
  final List<OnbordingTextModel> onboardingData = [
    OnbordingTextModel(
      image: "assets/images/slider 1.png",
      title: "Fastest Payment in\nthe world",
      subtitle: "Integrate multiple payment methods\nto help you up the process quickly",
    ),
    OnbordingTextModel(
      image: "assets/images/slider 2.png",
      title: "The most Secure\nPlatform for Customer",
      subtitle: "Built-in Fingerprint, face recognition\nand more, keeping you completely safe",
    ),
    OnbordingTextModel(
      image: "assets/images/slider 3.png",
      title: "Paying for Everything is\nEasy and Convenient",
      subtitle: "Built-in Fingerprint, face recognition\nand more, keeping you completely safe",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

       
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingData.length,
                onPageChanged: (index) {
                  setState(() {
                    activeIndex = index; 
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Image.asset(
                      onboardingData[index].image,
                      fit: BoxFit.contain,
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

          
            AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: onboardingData.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Color(0xff0066FF),
                dotHeight: 8,
                dotWidth: 8,
                spacing: 4,
                dotColor: Color(0xff7E848D),
              ),
            ),

            const SizedBox(height: 25),

           
            H1TextWidget(onboardingData[activeIndex]),
            const SizedBox(height: 10),

          
            H2TextWidget(onboardingData[activeIndex]),

            const SizedBox(height: 30),

           
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ButtonWedgit(
                () {
                  if (activeIndex < onboardingData.length - 1) {
                   
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ),
                    );
                  }
                },
                button: ButtonModel(
                  "Next"
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}