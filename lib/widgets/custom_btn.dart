import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnText,
  });

  final String btnText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffb29d8c),
      ),
      child: Center(
        child: Text(
          // todo
          btnText,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
