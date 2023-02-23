import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/quiz/view/quiz_page.dart';

import '../view_models/api_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 0),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => QuizPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Quiz App"), CircularProgressIndicator()],
        ),
      ),
    );
  }
}
