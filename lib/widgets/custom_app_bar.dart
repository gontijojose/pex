import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.orange,
    title: Row(
      children: [
        Image.asset('lib/assets/logo.jpg', height: 40),
        SizedBox(width: 10),
        Text('Frutas Express', style: TextStyle(color: Colors.white)),
      ],
    ),
  );
}
