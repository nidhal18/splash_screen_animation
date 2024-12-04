import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash_screen_animation/home_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const FadeInWidget(child: MyHomePage())),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Splash Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      ),
    );
  }
}
