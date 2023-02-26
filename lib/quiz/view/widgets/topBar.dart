import 'package:flutter/material.dart';

Widget topImage() {
  return Container(
    height: 300,
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      child: Image.asset(
        'assets/quizbackground.png',
        fit: BoxFit.cover,
      ),
    ),
  );
}
