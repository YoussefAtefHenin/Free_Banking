import 'package:flutter/material.dart';
import 'package:free_banking/models/textFileld_model.dart';

class TextfieldWidget extends StatelessWidget {
  final TextfileldModel textfieldM;

  const TextfieldWidget(this.textfieldM, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          decoration: InputDecoration(
            hintText: textfieldM.hint,
            labelText: textfieldM.label,
            labelStyle: TextStyle(color: Color(0xffA2A2A7)),
            prefix: Icon(textfieldM.Ticon, color: Color(0xffA2A2A7)),
            suffixIcon: textfieldM.suffix,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffA2A2A7)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFFF9FF)),
            ),
          ),
          obscureText: textfieldM.obscureText ?? false,
          controller: textfieldM.controller,
          validator: textfieldM.validator,
          keyboardType: textfieldM.keyboardType,
        ),
        const SizedBox(height: 21),
      ],
    );
  }
}
