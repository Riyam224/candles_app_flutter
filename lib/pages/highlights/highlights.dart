// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:candles_app/pages/catalog/catalog_page.dart';
import 'package:flutter/material.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/h2.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/highlight.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            child: Padding(
          padding: const EdgeInsets.only(
            top: 23,
            left: 24,
            right: 24,
          ),
          child: Divider(
            thickness: 3,
            indent: 10,
            endIndent: 20,
            color: Colors.white,
          ),
        )),
        Positioned(
          top: 100,
          left: 24,
          child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.amber,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    50.0), // Set the radius to 50% to make it circular
                child: Image.asset(
                  'assets/images/h2.jpg',
                  fit: BoxFit
                      .cover, // Ensure the image fills the available space
                ),
              )),
        ),
        Positioned(
          top: 110,
          left: 95,
          child: Container(
            child: Text(
              'Women’s Shirts',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
            top: 110,
            right: 24,
            child: Container(
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
            )),
        Positioned(
          top: 309,
          left: 24,
          child: Container(
            child: Text(
                maxLines: 2,
                'A shirt is a profitable investment in\n the wardrobe. And here"s why:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                )),
          ),
        ),
        Positioned(
          top: 400,
          left: 24,
          child: Text(
              maxLines: 2,
              '- shirts perfectly match with any\n bottom',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              )),
        ),
        Positioned(
          top: 490,
          left: 24,
          child: Text(
              maxLines: 2,
              '- shirts made of natural fabrics are\n suitable for any time of the year',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              )),
        ),
        Positioned(
          top: 590,
          left: 24,
          child: Text(
              maxLines: 2,
              '-- with the help of a shirt, you can create not only an image for work, but also for walking with friends- with the help of a shirt, you can\n create not only an image for work,\n but also for walking with friends',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              )),
        ),
        Positioned(
            top: 730,
            left: 24,
            right: 24,
            child: GestureDetector(
              // todo
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return CatalogoryPage();
                }));
              },
              child: Container(
                  width: 450,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text('View Collection',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                  )),
            ))
      ],
    ));
  }
}
