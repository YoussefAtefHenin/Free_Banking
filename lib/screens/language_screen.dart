

import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  final TextEditingController searchController = TextEditingController();

  String selectedLanguage = 'English';

  final List<Map<String, String>> languages = [
    {
      'name': 'English',
      'flag': '🇺🇸',
    },
    {
      'name': 'Australia',
      'flag': '🇦🇺',
    },
    {
      'name': 'French',
      'flag': '🇫🇷',
    },
    {
      'name': 'Spanish',
      'flag': '🇪🇸',
    },
    {
      'name': 'America',
      'flag': '🇦🇲',
    },
    {
      'name': 'Vietnam',
      'flag': '🇻🇳',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final filteredLanguages = languages.where((language) {
      return language['name']!
          .toLowerCase()
          .contains(searchController.text.toLowerCase());
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
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
                        'Language',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff20202D),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 54),
                ],
              ),

              const SizedBox(height: 40),

              // Search
              TextField(
                controller: searchController,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  hintText: 'Search Language',
                  hintStyle: const TextStyle(
                    color: Color(0xffA5A5AD),
                    fontSize: 16,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xffA5A5AD),
                  ),
                  filled: true,
                  fillColor: const Color(0xffF5F5F5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 18,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Languages List
              Expanded(
                child: ListView.builder(
                  itemCount: filteredLanguages.length,
                  itemBuilder: (context, index) {
                    final language = filteredLanguages[index];
                    final name = language['name']!;
                    final flag = language['flag']!;

                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedLanguage = name;
                        });
                      },
                      child: Container(
                        height: 102,
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xffEEEEEE),
                              width: 1,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            // Flag
                            Container(
                              width: 62,
                              height: 62,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                flag,
                                style: const TextStyle(
                                  fontSize: 42,
                                ),
                              ),
                            ),

                            const SizedBox(width: 18),

                            // Language Name
                            Expanded(
                              child: Text(
                                name,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff20202D),
                                ),
                              ),
                            ),

                            // Selected Check
                            if (selectedLanguage == name)
                              Container(
                                width: 24,
                                height: 24,
                                decoration: const BoxDecoration(
                                  color: Color(0xff2F66F6),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}