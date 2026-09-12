import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:free_banking/screens/profile/profile_widget/customProfileAppBar.dart';
import 'package:free_banking/screens/widget/customSearchBar.dart';
import 'package:free_banking/screens/widget/transactionWidget/transactionItemWidget.dart';

import '../models/transactionItemModel.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomProfileAppBar(title: 'Search',actionIcon:Icons.close ,),
          body: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
                    children: [
                      SizedBox(height: 30,),
                CustomSearchBar(),
                      SizedBox(height: 30,),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
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
                  ],
                ),
            ),
                    ],
            )
          ),
    );
  }
}
