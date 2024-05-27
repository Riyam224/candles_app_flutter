import 'package:candles_app/pages/catalog/catelog_details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CatalogoryPage extends StatefulWidget {
  const CatalogoryPage({super.key});

  @override
  State<CatalogoryPage> createState() => _CatalogoryPageState();
}

class _CatalogoryPageState extends State<CatalogoryPage> {
  final List<Map<String, dynamic>> categories = [
    {
      "title": "Dresses",
      "image": "assets/images/cateloge1.png",
    },
    {
      "title": "Jackets & Blazers",
      "image": "assets/images/cateloge2.png",
    },
    {
      "title": "Coats",
      "image": "assets/images/cateloge3.png",
    },
    {
      "title": "Shirts",
      "image": "assets/images/cateloge4.png",
    },
    {
      "title": "Lingerie & Nightwear",
      "image": "assets/images/cateloge5.png",
    },
    {
      "title": "Collections",
      "image": "assets/images/cateloge6.png",
    },
    {
      "title": "New products",
      "image": "assets/images/cateloge7.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const Padding(
            padding:
                EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.lessThan),
                Text(
                  "Catalog",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FaIcon(FontAwesomeIcons.search),
              ],
            ),
          ),
          //  todo
          CategoryCards(categories: categories),
        ],
      ),
    ));
  }
}

class CategoryCards extends StatelessWidget {
  const CategoryCards({
    super.key,
    required this.categories,
  });

  final List<Map<String, dynamic>> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          mainAxisExtent: 350,
        ),
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  color: const Color(0xffb9bdbc),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    // todo
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const CatelogDetails();
                      }));
                    },
                    child: Image.asset(
                      "${categories.elementAt(index)["image"]}",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
