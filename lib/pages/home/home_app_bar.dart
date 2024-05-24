import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0, bottom: 20),
      child: Container(
          width: double.infinity,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              const Text(
                'Elowen',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const FaIcon(FontAwesomeIcons.search),
            ],
          )),
    );
  }
}
