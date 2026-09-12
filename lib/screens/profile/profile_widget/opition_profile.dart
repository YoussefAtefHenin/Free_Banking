import 'package:flutter/material.dart';

class OpitionProfile extends StatelessWidget {
  const OpitionProfile({
    super.key,
    required this.text,
    required this.icon,
    this.onLeadingTap,
    this.onTrailingTap,
    this.trailingIcon = Icons.arrow_forward_ios,
  });

  final String text;
  final IconData icon;
  final IconData trailingIcon;
  final VoidCallback? onLeadingTap;
  final VoidCallback? onTrailingTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Row(
            children: [
              GestureDetector(
                onTap: onLeadingTap,
                child: Icon(icon, size: 22, color: const Color(0xff7E848D)),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              GestureDetector(
                onTap: onTrailingTap,
                child: Icon(trailingIcon, size: 16, color: const Color(0xffA2A2A7)),
              ),
            ],
          ),
        ),
        const Divider(
          color: Color(0xffE2E2E2),
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}