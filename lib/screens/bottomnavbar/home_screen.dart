import 'package:flutter/material.dart';
import 'package:free_banking/models/home_option_model.dart';
import 'package:free_banking/screens/bottomnavbar/widget/home_card.dart';
import 'package:free_banking/screens/bottomnavbar/widget/home_options.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: Image.asset(
                              "assets/images/profile.png",
                            ).image,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back,",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7E848D),
                            ),
                          ),
                          Text(
                            "Tanya Myroniuk",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1E1E2D),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffF4F4F4),
                        ),
                        child: Image.asset("assets/icons/Search_icon.png"),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                HomeCard(),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xffF4F4F4),
                          ),
                          child: Image.asset("assets/icons/send_icon.png"),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Sent",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff1E1E2D),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xffF4F4F4),
                          ),
                          child: Image.asset("assets/icons/receive_icon.png"),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Receive",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff1E1E2D),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xffF4F4F4),
                          ),
                          child: Image.asset("assets/icons/Search_icon.png"),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Loan",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff1E1E2D),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xffF4F4F4),
                          ),
                          child: Image.asset("assets/icons/Search_icon.png"),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Topup",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff1E1E2D),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transaction",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1E1E2D),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Sell All",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0066FF),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 19),
                SizedBox(
                  height: 250,
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
