// ignore_for_file: file_names, prefer_const_constructors_in_immutables, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String buttonName;
  final int buttonColorCodeInteger;
  SocialButton({
    required this.buttonName,
    required this.buttonColorCodeInteger,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 178,
      decoration: BoxDecoration(
        color: Color(buttonColorCodeInteger),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: TextButton(
          onPressed: () {},
          child: Text(
            buttonName,
            style: const TextStyle(color: Color(0xff1b3c4d8), fontSize: 18),
          )),
    );
  }
}
