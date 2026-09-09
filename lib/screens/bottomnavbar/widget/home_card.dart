import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215,
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: const Color(0xff25253D),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          // World Map
          Positioned.fill(
            child: Opacity(
              opacity: 0.2,
              child: Image.asset("assets/images/earth.png", fit: BoxFit.cover),
            ),
          ),

          // Card Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Chip + Contactless
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/container1.png",
                      width: 28,
                      height: 28,
                    ),

                    Row(
                      children: [
                        Image.asset("assets/icons/Union-4.png"),
                        SizedBox(width: 1),
                        Image.asset("assets/icons/Union-3.png"),
                        Image.asset("assets/icons/Union-2.png"),
                        Image.asset("assets/icons/Union-1.png"),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // Card Number
                const Text(
                  "4562   1122   4595   7852",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 29,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0,
                  ),
                ),

                const SizedBox(height: 10),

                // Card Holder
                const Text(
                  "AR Jonson",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 12),

                // Bottom Information
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Expiry Date
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Expiry Date",
                          style: TextStyle(
                            color: Color(0xffA2A2A7),
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        const SizedBox(height: 2),

                        const Text(
                          "24/2000",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(width: 30),

                    // CVV
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "CVV",
                          style: TextStyle(
                            color: Color(0xffA2A2A7),
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        const SizedBox(height: 2),

                        const Text(
                          "6986",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    // Mastercard
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Group 2.png", width: 45),

                        // const SizedBox(height: 2),
                        const Text(
                          "Mastercard",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
