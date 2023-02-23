// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quiz_app/quiz/view/widgets/questionContainer.dart';
import 'package:quiz_app/quiz/view/widgets/topBar.dart';

import '../view_models/api_services.dart';
import '../model/result.dart';

class QuizPage extends StatefulWidget {
  QuizPage({
    Key? key,
  }) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    topImage(),
                    Positioned(
                        top: MediaQuery.of(context).size.height / 5,
                        child: questionContainer()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
