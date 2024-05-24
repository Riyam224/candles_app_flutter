import 'package:flutter/material.dart';

class CategoryTextList extends StatelessWidget {
  CategoryTextList({super.key});
  final List<String> categories = [
    "All",
    "Dresses",
    "Jackets & Blazers",
    "Coats",
    "Shirts",
    "Lingerie & Nightwear",
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 16, right: 12, bottom: 20),
            child: Text(categories[index]),
          );
        },
      ),
    );
  }
}
