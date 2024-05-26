// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  // todo
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "CLAUDETTE CORSET SHIRT DRESS IN WHITE",
      "price": "79.95\$",
      "image": "assets/images/card1.png",
    },
    {
      "title": "STRAPLESS CORSET BUSTIER TOP IN WHITE",
      "price": "59.95\$",
      "image": "assets/images/card2.png",
    },
    {
      "title": "SORDEC DRESS IN MARIGOLD",
      "price": "119.00\$",
      "image": "assets/images/card3.png",
    },
    {
      "title": "HIGH NECK DRAPED MINI DRESS IN BLACK",
      "price": "89.95\$",
      "image": "assets/images/card4.png",
    },
    {
      "title": "ROGERS PANTS IN CHARCOAL",
      "price": "69.95\$",
      "image": "assets/images/card5.png",
    },
    {
      "title":
          "Other Stories tailored mini skirt with asymmetric detail in rust",
      "price": "55.00\$",
      "image": "assets/images/card6.png",
    },
    {
      "title": "ONE SHOULDER LONG SLEEVE BODYSUIT IN BEIGE",
      "price": "59.95\$",
      "image": "assets/images/card7.png",
    },
    {
      "title": "HIGH WAISTED TAILORED SUITING SHORTS IN OXY FIRE",
      "price": "19.00\$",
      "image": "assets/images/card8.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        // todo
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          // todo
          mainAxisExtent: 300,
        ),
        itemCount: gridMap.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.redAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                // todo
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.asset(
                      "${gridMap.elementAt(index)['image']}",
                      // todo make image fit the container
                      fit: BoxFit.cover,
                      height: 170,
                      width: double.infinity,
                    ),
                  ),
                  // todo
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${gridMap.elementAt(index)["price"]}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(FontAwesomeIcons.heart),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text("${gridMap.elementAt(index)["title"]}"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
