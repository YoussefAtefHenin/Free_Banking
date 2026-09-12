import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../models/transactionItemModel.dart';

class TransactionItemWidget extends StatelessWidget {
  final TransactionModel transactionModel;

  const TransactionItemWidget({super.key, required this.transactionModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: const BoxDecoration(
              color: Color(0xffF4F4F6),
              shape: BoxShape.circle,
            ),

            child: Center(
              child: transactionModel.icon,
            ),
          ),
          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  transactionModel.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1E1E2D),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  transactionModel.category,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA2A2A7),
                  ),
                ),
              ],
            ),
          ),

          Text(
            transactionModel.isExpense
                ? "- \$${transactionModel.price}"
                : "+\$${transactionModel.price}",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: transactionModel.isExpense
                  ? const Color(0xff1E1E2D)
                  : const Color(0xff1E1E2D),
            ),
          ),
        ],
      ),
    );
  }
}
