import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/transactionItemModel.dart';
import '../widget/transactionWidget/transactionItemWidget.dart';

class Categorychartbottomsheet extends StatelessWidget {
  const Categorychartbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 12),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Center(
                child: Container(
                  width: 45,
                  height: 4.5,
                  decoration: BoxDecoration(
                    color: const Color(0xffE0E0E0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Category Chart",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1E1E2D),
                  ),
                ),
                const SizedBox(height: 24),
                Center(
                  child: Image.asset(
                    "assets/images/Group 25.png",
                    width: 210,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 28),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _LegendItem(color: Color(0xffFF9F43), label: "Transaction"),
                    _LegendItem(color: Color(0xff2ED573), label: "Transfer"),
                    _LegendItem(color: Color(0xff00D2D3), label: "Travel"),
                  ],
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _LegendItem(color: Color(0xffA29BFE), label: "Food"),
                    _LegendItem(color: Color(0xffFF7675), label: "Shopping"),
                    _LegendItem(color: Color(0xff55E6C1), label: "Car"),
                  ],
                ),
                const SizedBox(height: 28),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Transaction History",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1E1E2D),
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: Color(0xff0066FF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  "Today",
                  style: TextStyle(
                    color: Color(0xff8E8E93),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                TransactionItemWidget(
                  transactionModel: TransactionModel(
                    title: "Apple Store",
                    category: "Entertainment",
                    price: "5,99",
                    icon: const FaIcon(
                      FontAwesomeIcons.apple,
                      color: Colors.black,
                      size: 22,
                    ),
                    isExpense: true,
                  ),
                ),
                const SizedBox(height: 20),
                TransactionItemWidget(
                  transactionModel: TransactionModel(
                    title: "Spotify",
                    category: "Music",
                    price: "12,99",
                    icon: const FaIcon(
                      FontAwesomeIcons.spotify,
                      color: Color(0xff1DB954),
                      size: 22,
                    ),
                    isExpense: true,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Last 7 Day",
                  style: TextStyle(
                    color: Color(0xff8E8E93),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                TransactionItemWidget(
                  transactionModel: TransactionModel(
                    title: "Apple Store",
                    category: "Entertainment",
                    price: "5,99",
                    icon: const FaIcon(
                      FontAwesomeIcons.apple,
                      color: Colors.black,
                      size: 22,
                    ),
                    isExpense: true,
                  ),
                ),
                const SizedBox(height: 20),
                TransactionItemWidget(
                  transactionModel: TransactionModel(
                    title: "Spotify",
                    category: "Music",
                    price: "12,99",
                    icon: const FaIcon(
                      FontAwesomeIcons.spotify,
                      color: Color(0xff1DB954),
                      size: 22,
                    ),
                    isExpense: true,
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;

  const _LegendItem({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xff555555),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
