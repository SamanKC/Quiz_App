import 'package:flutter/material.dart';
import 'package:quiz_app/quiz/view/quiz_page.dart';
import 'package:quiz_app/quiz/view/splash_screen.dart';
import 'package:quiz_app/quiz/view_models/api_services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SplashScreen(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen();
//   }
// }
