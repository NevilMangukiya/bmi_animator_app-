import 'dart:async';
import 'package:adv_bmianimator_app/screens/details.dart';
import 'package:adv_bmianimator_app/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "BMI calc",
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => const MyApp(),
      "bmi_page": (context) => const BmiPage(),
      "result_page": (context) => const DetailsPage(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (timer) {
      Navigator.pushNamedAndRemoveUntil(context, "bmi_page", (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A8F08),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          const Spacer(),
          Image.asset(
            "assets/images/logo.png",
            scale: 2,
          ),
          const Spacer(
            flex: 3,
          ),
          const CircularProgressIndicator(
            backgroundColor: Color(0xff0A8F08),
            color: Colors.white,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Check your BMI",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
