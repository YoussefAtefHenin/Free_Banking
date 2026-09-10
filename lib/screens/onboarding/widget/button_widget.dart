import 'package:flutter/material.dart';
import 'package:free_banking/models/button_model.dart';


class ButtonWedgit extends StatelessWidget {
  final ButtonModel button;
  final VoidCallback onPressed;

  const ButtonWedgit( this.onPressed, {required this.button,super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 56,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff0066FF),
            borderRadius: BorderRadius.circular(20),
          ),
          //padding: EdgeInsets.symmetric(vertical: 25),
          child: Center(
            child: Text(
              button.buttonText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xffFFF9FF),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
