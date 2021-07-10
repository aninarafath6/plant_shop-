  import 'package:flutter/material.dart';

Widget heading (){
return  RichText(
      text: TextSpan(
        text: 'welcome to  \n',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          height: 1.5,
        ),
        children: const <TextSpan>[
          TextSpan(
            text: 'Plant Shop',
            style: TextStyle(
                fontSize: 35, color: Colors.green, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
}