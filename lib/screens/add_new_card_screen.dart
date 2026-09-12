import 'package:flutter/material.dart';
import 'package:free_banking/screens/bottomnavbar/widget/home_card.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xffF4F4F4),
                            ),
                            child: Image.asset(
                              "assets/icons/arrow_back_icon.png",
                            ),
                          ),
                        ),
                        SizedBox(width: 85),
                        Center(
                          child: Text(
                            "Add New Card",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1E1E2D),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.9),
                    HomeCard(),
                    SizedBox(height: 40),

                    TextFormField(
                      cursorColor: Color(0xff0066FF),
                      onTapOutside: (event) {
                        FocusScope.of(context).unfocus();
                      },
                      decoration: InputDecoration(
                        labelText: "Cardholder Name",
                        labelStyle: TextStyle(
                          fontSize: 17,
                          color: Color(0xffA2A2A7),
                        ),
                        hintText: "Tanya Myoniuk",
                        hintStyle: TextStyle(
                          fontSize: 17,
                          color: Color(0xff1E1E2D),
                        ),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          size: 25,
                          color: Color(0xffA2A2A7),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE2E2E2)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff0066FF)),
                        ),
                      ),
                    ),

                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextFormField(
                            cursorColor: Color(0xff0066FF),
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            decoration: InputDecoration(
                              labelText: "Expiry Date",
                              labelStyle: TextStyle(
                                fontSize: 17,
                                color: Color(0xffA2A2A7),
                              ),
                              hintText: "09/06/2024",
                              hintStyle: TextStyle(
                                fontSize: 17,
                                color: Color(0xff1E1E2D),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffE2E2E2),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff0066FF),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 100),
                        Expanded(
                          child: TextFormField(
                            cursorColor: Color(0xff0066FF),
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            decoration: InputDecoration(
                              labelText: "4-digit CVV",
                              labelStyle: TextStyle(
                                fontSize: 17,
                                color: Color(0xffA2A2A7),
                              ),
                              hintText: "6986",
                              hintStyle: TextStyle(
                                fontSize: 17,
                                color: Color(0xff1E1E2D),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffE2E2E2),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff0066FF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextFormField(
                            cursorColor: Color(0xff0066FF),
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            decoration: InputDecoration(
                              labelText: "Card Number",
                              labelStyle: TextStyle(
                                fontSize: 17,
                                color: Color(0xffA2A2A7),
                              ),
                              hintText: "4562 1122 4595 7852",
                              hintStyle: TextStyle(
                                fontSize: 17,
                                color: Color(0xff1E1E2D),
                              ),
                              prefixIcon: Icon(
                                Icons.credit_card_outlined,
                                size: 25,
                                color: Color(0xffA2A2A7),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffE2E2E2),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff0066FF),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // SizedBox(width: 10),
                        Image.asset(
                          "assets/images/Group 2.png",
                          height: 20,
                          width: 35,
                        ),
                      ],
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
        ),
      ),
    );
  }
}
