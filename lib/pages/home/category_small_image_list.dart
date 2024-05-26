// todo
import 'package:flutter/material.dart';

class CategorySmallImageList extends StatelessWidget {
  CategorySmallImageList({super.key});
  final List<String> images = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    // * main size box
    return SizedBox(
      height: 150.69,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          // todo size box image
          return Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 37),
            child: Container(
                width: 94,
                height: 125.69,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xff8b98a1),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      images[index],
                      fit: BoxFit.fill,
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
