import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateOfBirthField extends StatefulWidget {
  final DateTime? initialDate;
  final ValueChanged<DateTime>? onDateSelected;

  const DateOfBirthField({
    super.key,
    this.initialDate,
    this.onDateSelected,
  });

  @override
  State<DateOfBirthField> createState() => _DateOfBirthFieldState();
}

class _DateOfBirthFieldState extends State<DateOfBirthField> {
  late DateTime selectedDate;

  // أسماء الشهور
  final List<String> months = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];

  @override
  void initState() {
    super.initState();
    // تاريخ افتراضي زي التصميم: 28 سبتمبر 2000
    selectedDate = widget.initialDate ?? DateTime(2000, 9, 28);
  }

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      widget.onDateSelected?.call(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _pickDate,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xffF2F2F2), width: 1.5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text(
              selectedDate.day.toString().padLeft(2, '0'),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff1E1E2D),
              ),
            ),

            Text(
              months[selectedDate.month - 1],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff1E1E2D),
              ),
            ),

            Text(
              selectedDate.year.toString(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff1E1E2D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}