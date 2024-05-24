import 'package:candles_app/pages/home/home_page.dart';
import 'package:candles_app/pages/login/login_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const CandlesApp());
}

class CandlesApp extends StatelessWidget {
  const CandlesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
