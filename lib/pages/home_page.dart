import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // todo
  bool isChecked = false;

  void isToggled() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 120,
                height: 120,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
            ),
            const Text(
              'Create Your Account',
              style: TextStyle(
                fontSize: 32,
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(18.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Dmitriy.divnov@gmail.com',
                  prefix: Padding(
                    padding: EdgeInsets.only(
                      left: 8,
                      top: 4,
                    ),
                    child: Icon(Icons.email_outlined),
                  ),
                ),
              ),
            ),
            // todo
            const Padding(
              padding: EdgeInsets.only(
                top: 8,
                left: 18.0,
                right: 18.0,
                bottom: 8,
              ),
              child: TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Dmitriy.divnov@gmail.com',
                  suffix: Icon(Icons.visibility_off),
                  prefix: Padding(
                    padding: EdgeInsets.only(
                      left: 8,
                      top: 4,
                    ),
                    child: Icon(Icons.key),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 16,
              ),
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      isToggled();
                    },
                  ),
                  const SizedBox(width: 8),
                  Text('Remember me')
                ],
              ),
            ),
            // todo
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 16.0,
                right: 16.0,
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                  width: 327,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffb29d8c),
                  ),
                  child: const Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('already have an account '),
                Text(
                  'sign in',
                  style: TextStyle(
                    color: Color(0xff65594f),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
