import 'package:flutter/material.dart';
import 'package:free_banking/screens/bottomnavbar/widget/home_card.dart';
import 'package:free_banking/screens/bottomnavbar/widget/second_card.dart';
import 'package:free_banking/widgets/custom_botton.dart';

class AllCardsScreen extends StatelessWidget {
  const AllCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xffF4F4F4),
                            ),
                            child: Image.asset(
                              "assets/icons/arrow_back_icon.png",
                            ),
                          ),
                        ),
                        SizedBox(width: 103),
                        Center(
                          child: Text(
                            "All Cards",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1E1E2D),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.9),
                    HomeCard(),
                    SizedBox(height: 35),
                    SecondCard(),

                    SizedBox(height: 160),
                    CustomButton(text: "Add Card +", onTap: () {}),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 160,
              child: Image.asset("assets/images/Ellipse1.png"),
            ),
          ],
        ),
      ),
    );
  }
}
