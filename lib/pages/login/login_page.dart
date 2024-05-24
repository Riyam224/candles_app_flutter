import 'package:candles_app/pages/register/register_page.dart';
import 'package:candles_app/pages/success_register_page.dart';
import 'package:candles_app/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              'Login Your Account',
              style: TextStyle(
                fontSize: 32,
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(18.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Jane Due',
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
                  hintText: '********',
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
                  const Text('Remember me')
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
                  onPressed: () {
                    // todo
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SuccessfulRegister();
                        },
                      ),
                    );
                  },
                  child: const CustomButton(btnText: 'Sign up')),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Dont have an account '),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: const Text(
                      'sign up',
                      style: TextStyle(
                        color: Color(0xff65594f),
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
