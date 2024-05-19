import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:candkes_app/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 3000,
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 14),
              child: Text(
                'Kadi3 Candles',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffc5af9f),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        nextScreen: const RegisterPage(),
        splashTransition: SplashTransition.decoratedBoxTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        backgroundColor: Colors.white,
        splashIconSize: 250,
        animationDuration: const Duration(seconds: 3),
      ),
    );
  }
}
