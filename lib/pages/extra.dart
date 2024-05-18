import 'package:flutter/material.dart';

class extra extends StatelessWidget {
  const extra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     // builder: (context) => const SplashPage(),
          //   ),
          // );
        },
        child: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
    );
  }
}
