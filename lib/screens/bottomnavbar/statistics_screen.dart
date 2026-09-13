import 'package:flutter/material.dart';
import 'package:free_banking/models/home_option_model.dart';
import 'package:free_banking/screens/bottomnavbar/widget/home_options.dart';
import 'package:free_banking/screens/transaction_history_screen.dart';

class StatisticsScreen extends StatelessWidget {
  StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                      "Statistics",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1E1E2D),
                      ),
                    ),
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
                    child: Image.asset("assets/icons/Notification_icon.png"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 31),

            Center(
              child: Text(
                "Current Balance",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffA2A2A7),
                ),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                "\$8,545.00",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1E1E2D),
                ),
              ),
            ),
            SizedBox(height: 29),
            Image.asset(
              "assets/images/statistics_graph.png",
              width: double.infinity,
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Oct",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA2A2A7),
                  ),
                ),
                Text(
                  "Nov",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA2A2A7),
                  ),
                ),
                Text(
                  "Dec",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA2A2A7),
                  ),
                ),
                Container(
                  height: 28,
                  width: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff0066FF),
                  ),
                  child: Center(
                    child: Text(
                      "Jan",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Feb",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA2A2A7),
                  ),
                ),
                Text(
                  "Mar",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffA2A2A7),
                  ),
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TransactionHistoryScreen(),
                      ),
                    );
                  },
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
