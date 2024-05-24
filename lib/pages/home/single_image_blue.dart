import 'package:flutter/material.dart';

class SingleImageBlue extends StatelessWidget {
  const SingleImageBlue({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 251,
      child: Image.asset(
        "assets/images/img1.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
