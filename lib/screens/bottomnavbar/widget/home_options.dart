import 'package:flutter/material.dart';
import 'package:free_banking/models/home_option_model.dart';

class HomeOptions extends StatelessWidget {
  final HomeOptionModel option;
  const HomeOptions({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color(0xffF4F4F4),
          ),
          child: Image.asset(option.iconImage, width: 15, height: 15),
        ),
        SizedBox(width: 17),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                option.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1E1E2D),
                ),
              ),
              Text(
                option.desc,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffA2A2A7),
                ),
              ),
            ],
          ),
        ),
        Text(
          "\$${option.price.toString()}",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: option.colorPrice,
          ),
        ),
      ],
    );
  }
}
