


import 'package:flutter/material.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color(0xff1D1D1F),
        ),
      ),
    );
  }

  Widget sectionText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
          height: 1.7,
          color: Color(0xff777777),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffF5F5F5),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
        ),

        title: const Text(
          'Terms & Condition',
          style: TextStyle(
            color: Color(0xff1D1D1F),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(24, 10, 24, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Terms and Conditions',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff1D1D1F),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Last updated: August 2026',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff999999),
              ),
            ),

            const SizedBox(height: 25),

            sectionTitle('1. Introduction'),

            sectionText(
              'Welcome to our banking application. By accessing or using this '
              'application, you agree to be bound by these Terms and Conditions. '
              'Please read them carefully before using our services.',
            ),

            sectionTitle('2. Use of the Application'),

            sectionText(
              'You agree to use the application only for lawful purposes. '
              'You must provide accurate information when creating or using '
              'your account. You are responsible for all activities performed '
              'through your account.',
            ),

            sectionTitle('3. Account Security'),

            sectionText(
              'You are responsible for keeping your password and account '
              'information confidential. Do not share your password, security '
              'codes, or other private information with anyone. '
              'Notify us immediately if you notice any unauthorized activity.',
            ),

            sectionTitle('4. Transactions'),

            sectionText(
              'All transactions must be authorized by the account holder. '
              'You should review transaction details carefully before confirming '
              'any payment or money transfer. Transactions may be subject to '
              'verification and applicable limits.',
            ),

            sectionTitle('5. Privacy and Data Protection'),

            sectionText(
              'We respect your privacy and work to protect your personal and '
              'financial information. Your information may be used to provide '
              'and improve our services, prevent fraud, and comply with legal '
              'requirements.',
            ),

            sectionTitle('6. Changes to These Terms'),

            sectionText(
              'We may update these Terms and Conditions from time to time. '
              'Any changes will be displayed within the application. '
              'Continued use of the application after changes are published '
              'means that you accept the updated terms.',
            ),

            sectionTitle('7. Contact Us'),

            sectionText(
              'If you have any questions or concerns about these Terms and '
              'Conditions, please contact our support team through the '
              'application.',
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              height: 54,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff1D1D1F),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Text(
                  'I Agree',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}