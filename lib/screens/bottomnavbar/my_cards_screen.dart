import 'package:flutter/material.dart';
import 'package:free_banking/models/home_option_model.dart';
import 'package:free_banking/screens/add_new_card_screen.dart';
import 'package:free_banking/screens/bottomnavbar/widget/home_card.dart';
import 'package:free_banking/screens/bottomnavbar/widget/home_options.dart';

class MyCardsScreen extends StatelessWidget {
  MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffF4F4F4),
                        ),
                        child: Image.asset("assets/icons/arrow_back_icon.png"),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "My Cards",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1E1E2D),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddNewCardScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffF4F4F4),
                        ),
                        child: Image.asset("assets/icons/add_icon.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.9),
                HomeCard(),
                SizedBox(height: 35),

                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: models.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: HomeOptions(option: models[index]),
                      );
                    },
                  ),
                ),
                SizedBox(height: 19),
                Text(
                  "Monthly spending limit",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff1E1E2D),
                  ),
                ),
                SizedBox(height: 19),

                Image.asset(
                  "assets/images/image_card.png",
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 160,
          child: Image.asset("assets/images/Ellipse1.png"),
        ),
      ],
    );
  }

  List<HomeOptionModel> models = [
    HomeOptionModel(
      iconImage: "assets/icons/apple.png",
      name: "Apple Store",
      desc: "Entertainment",
      price: -5.99,
      colorPrice: Color(0xff1E1E2D),
    ),
    HomeOptionModel(
      iconImage: "assets/icons/spotife.png",
      name: "Spotify",
      desc: "Music",
      price: -12.99,
      colorPrice: Color(0xff1E1E2D),
    ),

    HomeOptionModel(
      iconImage: "assets/icons/Grocery.png",
      name: "Grocery",
      desc: "Grocery",
      price: -88,
      colorPrice: Color(0xff1E1E2D),
    ),
    HomeOptionModel(
      iconImage: "assets/icons/money_transfer.png",
      name: "Money Transfer",
      desc: "Transaction",
      price: 300,
      colorPrice: Color(0xff0066FF),
    ),
    HomeOptionModel(
      iconImage: "assets/icons/apple.png",
      name: "Apple Store",
      desc: "Entertainment",
      price: -5.99,
      colorPrice: Color(0xff1E1E2D),
    ),
    HomeOptionModel(
      iconImage: "assets/icons/spotife.png",
      name: "Spotify",
      desc: "Music",
      price: -12.99,
      colorPrice: Color(0xff1E1E2D),
    ),
    HomeOptionModel(
      iconImage: "assets/icons/money_transfer.png",
      name: "Money Transfer",
      desc: "Transaction",
      price: 300,
      colorPrice: Color(0xff0066FF),
    ),
    HomeOptionModel(
      iconImage: "assets/icons/Grocery.png",
      name: "Grocery",
      desc: "Grocery",
      price: -88,
      colorPrice: Color(0xff1E1E2D),
    ),
  ];
}
