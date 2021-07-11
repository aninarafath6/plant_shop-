import 'package:flutter/material.dart';

Widget heading() {
  return RichText(
    text: TextSpan(
      text: 'welcome to  \n',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        height: 1.5,
      ),
      children: const <TextSpan>[
        TextSpan(
          text: 'Plant Shop',
          style: TextStyle(
              fontSize: 38, color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
