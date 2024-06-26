// ignore_for_file: prefer_const_constructors
import 'package:candles_app/pages/home/card_list.dart';
import 'package:candles_app/pages/home/category_small_image_list.dart';
import 'package:candles_app/pages/home/category_text.dart';
import 'package:candles_app/pages/home/category_text_list.dart';
import 'package:candles_app/pages/home/home_app_bar.dart';
import 'package:candles_app/pages/home/single_image_blue.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // todo navbar
        bottomNavigationBar: GNav(tabs: [
          GButton(icon: Icons.home),
          GButton(icon: Icons.menu),
          GButton(icon: Icons.add_shopping_cart),
          GButton(icon: FontAwesomeIcons.heart),
          GButton(icon: Icons.person),
        ]),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: HomeAppBar(),
            ),
            SliverToBoxAdapter(
              child: CategorySmallImageList(),
            ),
            SliverToBoxAdapter(
              child: SingleImageBlue(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            SliverToBoxAdapter(
              child: CategoryText(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: CategoryTextList(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            SliverToBoxAdapter(child: CardList()),
          ],
        ),
      ),
    );
  }
}
