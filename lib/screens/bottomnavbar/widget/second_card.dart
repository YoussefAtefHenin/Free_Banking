import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({super.key});

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
          // Card Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Chip + Contactless
                Image.asset("assets/images/chip.png", width: 35),

                const SizedBox(height: 25),

                // Card Number
                const Text(
                  "4562 1122 4595 7852",
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
                  "Smith Jonson",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 20),

                // Bottom Information
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

                    Image.asset("assets/images/visa.png"),
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
