 hala



import 'package:flutter/material.dart';
=======
import 'package:flutter/material.dart';
import 'package:free_banking/screens/profile/profile_widget/customProfileAppBar.dart';
import 'package:free_banking/screens/widget/transactionWidget/transactionItemWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/transactionItemModel.dart';
main

class TransactionHistoryScreen extends StatelessWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
hala
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundColor: const Color(0xffF5F5F5),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xff20202C),
                size: 18,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),

        title: const Text(
          'Transaction History',
          style: TextStyle(
            color: Color(0xff20202C),
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),

        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: const Color(0xffF5F5F5),
              child: Icon(
                Icons.history,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Today',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.blue.shade600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            Expanded(
              child: ListView(
                children: const [

                  TransactionItem(
                    icon: Icons.apple,
                    title: 'Apple Store',
                    subtitle: 'Entertainment',
                    amount: '- \$5,99',
                  ),

                  TransactionItem(
                    icon: Icons.music_note,
                    title: 'Spotify',
                    subtitle: 'Music',
                    amount: '- \$12,99',
                  ),

                  TransactionItem(
                    icon: Icons.download,
                    title: 'Money Transfer',
                    subtitle: 'Transaction',
                    amount: '\$300',
                  ),

                  TransactionItem(
                    icon: Icons.shopping_cart_outlined,
                    title: 'Grocery',
                    subtitle: 'Shopping',
                    amount: '- \$88',
                  ),

                  TransactionItem(
                    icon: Icons.apple,
                    title: 'Apple Store',
                    subtitle: 'Entertainment',
                    amount: '- \$5,99',
                  ),

                  TransactionItem(
                    icon: Icons.music_note,
                    title: 'Spotify',
                    subtitle: 'Music',
                    amount: '- \$12,99',
                  ),

                  TransactionItem(
                    icon: Icons.download,
                    title: 'Money Transfer',
                    subtitle: 'Transaction',
                    amount: '\$300',
                  ),

                  TransactionItem(
                    icon: Icons.shopping_cart_outlined,
                    title: 'Grocery',
                    subtitle: 'Shopping',
                    amount: '- \$88',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,

        selectedItemColor: Colors.grey.shade700,
        unselectedItemColor: Colors.grey.shade500,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            label: 'My Cards',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline),
            label: 'Statistics',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String amount;

  const TransactionItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),

      child: Row(
        children: [

          CircleAvatar(
            radius: 27,
            backgroundColor: const Color(0xffF5F5F5),
            child: Icon(
              icon,
              color: const Color(0xff20202C),
            ),
          ),

          const SizedBox(width: 18),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
          ),

          Text(
            amount,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

      appBar: CustomProfileAppBar(
        title: 'Transaction History',
        actionIcon: Icons.history,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
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
            SizedBox(height: 30),
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
            SizedBox(height: 20),
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
            TransactionItemWidget(
              transactionModel: TransactionModel(
                title: "Money Transfer",
                category: "Transaction",
                price: "300",
                icon: const Icon(
                  Icons.file_download_outlined,
                  color: Color(0xff1E1E2D),
                  size: 24,
                ),
                isExpense: false,
              ),
            ),
            SizedBox(height: 20),
            TransactionItemWidget(
              transactionModel: TransactionModel(
                title: "Grocery",
                category: "Shopping",
                price: "88",
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Color(0xffEB5757),
                  size: 24,
                ),
                isExpense: true,
              ),
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 20),
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
            TransactionItemWidget(
              transactionModel: TransactionModel(
                title: "Money Transfer",
                category: "Transaction",
                price: "300",
                icon: const Icon(
                  Icons.file_download_outlined,
                  color: Color(0xff1E1E2D),
                  size: 24,
                ),
                isExpense: false,
              ),
            ),
            SizedBox(height: 20),
            TransactionItemWidget(
              transactionModel: TransactionModel(
                title: "Grocery",
                category: "Shopping",
                price: "88",
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Color(0xffEB5757),
                  size: 24,
                ),
                isExpense: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
} main
