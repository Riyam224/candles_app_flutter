// ignore_for_file: prefer_const_constructors
import 'package:candles_app/pages/home/card_list.dart';
import 'package:candles_app/pages/home/category_small_image_list.dart';
import 'package:candles_app/pages/home/category_text.dart';
import 'package:candles_app/pages/home/category_text_list.dart';
import 'package:candles_app/pages/home/home_app_bar.dart';
import 'package:candles_app/pages/home/single_image_blue.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        HomeAppBar(),
        CategorySmallImageList(),
        SingleImageBlue(),
        SizedBox(
          height: 32,
        ),
        CategoryText(),
        SizedBox(
          height: 16,
        ),
        CategoryTextList(),
        SizedBox(
          height: 32,
        ),
        CardList(),
      ],
    ));
  }
}
