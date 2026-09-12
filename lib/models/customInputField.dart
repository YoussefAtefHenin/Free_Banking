import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final String? hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const CustomInputField({
    super.key,
    this.controller,
    this.initialValue,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event){
        FocusScope.of(context).unfocus();
      },
      controller: controller,
      initialValue: initialValue,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      onChanged: onChanged,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xff1E1E2D),
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 15,
          color: Color(0xff1E1E2D),
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: prefixIcon != null
            ? Padding(
          padding: const EdgeInsets.only(right: 14.0),
          child: Icon(
            prefixIcon,
            size: 22,
            color: const Color(0xffA2A2A7),
          ),
        )
            : null,
        prefixIconConstraints: const BoxConstraints(
          minWidth: 24,
          minHeight: 24,
        ),
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffF2F2F2), width: 1.5),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff0066FF), width: 1.5),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent, width: 1.5),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent, width: 1.5),
        ),
      ),
    );
  }
}