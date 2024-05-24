// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class HomeSmallCategoryItem extends StatelessWidget {
  const HomeSmallCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: 100,
          height: 150.69,
          child: Image.asset(
            'assets/images/category1.png',
            fit: BoxFit.fill,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
