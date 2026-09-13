


import 'package:flutter/material.dart';

class RequestMoneyScreen extends StatefulWidget {
  const RequestMoneyScreen({super.key});

  @override
  State<RequestMoneyScreen> createState() => _RequestMoneyScreenState();
}

class _RequestMoneyScreenState extends State<RequestMoneyScreen> {
  final payerNameController =
      TextEditingController(text: 'Tanya Myroniuk');

  final emailController =
      TextEditingController(text: 'tanya.myroniuk@gmail.com');

  final descriptionController =
      TextEditingController(text: 'Tanya Myroniuk');

  final amountController =
      TextEditingController(text: '26.00');

  @override
  void dispose() {
    payerNameController.dispose();
    emailController.dispose();
    descriptionController.dispose();
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 24),

              // Header
              Row(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: const BoxDecoration(
                      color: Color(0xffF5F5F5),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                        color: Color(0xff20202D),
                      ),
                    ),
                  ),

                  const Expanded(
                    child: Center(
                      child: Text(
                        'Request Money',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff20202D),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 54),
                ],
              ),

              const SizedBox(height: 35),

              // Payer Name
              const Text(
                'Payer Name',
                style: TextStyle(
                  color: Color(0xffA5A5AD),
                  fontSize: 17,
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: payerNameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Color(0xffA5A5AD),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffEEEEEE),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Email Address
              const Text(
                'Email Address',
                style: TextStyle(
                  color: Color(0xffA5A5AD),
                  fontSize: 17,
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Color(0xffA5A5AD),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffEEEEEE),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Description
              const Text(
                'Description',
                style: TextStyle(
                  color: Color(0xffA5A5AD),
                  fontSize: 17,
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Color(0xffA5A5AD),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffEEEEEE),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Monthly Due By
              const Text(
                'Monthly Due By',
                style: TextStyle(
                  color: Color(0xffA5A5AD),
                  fontSize: 17,
                ),
              ),

              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '28',
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    '09',
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    '2000',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  Expanded(child: _dateLine()),
                  const SizedBox(width: 35),
                  Expanded(child: _dateLine()),
                  const SizedBox(width: 35),
                  Expanded(child: _dateLine()),
                ],
              ),

              const SizedBox(height: 35),

              // Amount Box
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffE5E5E5),
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Enter Your Amount',
                          style: TextStyle(
                            color: Color(0xff8F8F99),
                            fontSize: 14,
                          ),
                        ),

                        Text(
                          'Change Currency?',
                          style: TextStyle(
                            color: Colors.red.shade400,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    Row(
                      children: [
                        const Text(
                          'USD',
                          style: TextStyle(
                            color: Color(0xff9AAED2),
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(width: 20),

                        Expanded(
                          child: TextField(
                            controller: amountController,
                            keyboardType:
                                TextInputType.number,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                            decoration:
                                const InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // Send Money Button
              SizedBox(
                width: double.infinity,
                height: 72,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Money request sent!'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2F66F6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Send Money',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dateLine() {
    return Container(
      height: 1,
      color: const Color(0xffEEEEEE),
    );
  }
}