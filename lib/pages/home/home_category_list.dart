import 'package:candles_app/pages/home/home_small_category_image_item.dart';
import 'package:flutter/material.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, bottom: 20),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return HomeSmallCategoryItem();
          },
        ),
      ),
    );
  }
}
