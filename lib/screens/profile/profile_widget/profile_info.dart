import 'package:flutter/material.dart';

class ProfilInfo extends StatelessWidget {
  final bool isCentered;
  const ProfilInfo({super.key, this.isCentered = false});

  @override
  Widget build(BuildContext context) {
    if (isCentered) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/profile.png"),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Tanya Myroniuk",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "Senior Designer",
            style: TextStyle(
              color: Color(0xffA2A2A7),
              fontSize: 14,
            ),
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/profile.png"),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Tanya Myroniuk",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Senior Designer",
                style: TextStyle(
                  color: Color(0xff7E848D),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
