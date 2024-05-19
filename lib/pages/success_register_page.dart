import 'package:candkes_app/pages/home_page.dart';
import 'package:candkes_app/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class SuccessfulRegister extends StatelessWidget {
  const SuccessfulRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Center(
            child: Image.asset('assets/images/Group 8.png'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 6),
          child: Text('Successful!',
              style: TextStyle(
                fontSize: 32,
              )),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: Text(
            'You have successfully registered in our app and start working in it.',
            style: TextStyle(color: Color.fromRGBO(185, 186, 213, 1)),
          ),
        ),
        GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: const CustomButton(btnText: 'Sign in'))
      ],
    ));
  }
}
